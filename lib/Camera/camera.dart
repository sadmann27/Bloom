import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

import 'preview_page.dart';

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;

  const CameraScreen({
    Key? key,
    required this.camera,
  }) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<File?> _takePicture() async {
    try {
      await _initializeControllerFuture;

      final Directory extDir = await getApplicationDocumentsDirectory();
      final String dirPath = '${extDir.path}/Pictures';
      await Directory(dirPath).create(recursive: true);
      final String filePath = '$dirPath/${DateTime.now().millisecondsSinceEpoch}.jpg';

      XFile picture = await _controller.takePicture();
      await picture.saveTo(filePath);

      return File(filePath);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<File?> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      return File(pickedImage.path);
    }

    return null;
  }

  Future<void> _navigateToPreviewPage(File? imageFile) async {
    if (imageFile != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PreviewPage(imageFile: imageFile),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () async {
              final imageFile = await _takePicture();
              _navigateToPreviewPage(imageFile);
            },
            child: const Icon(Icons.camera_alt),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () async {
              final imageFile = await _pickImageFromGallery();
              _navigateToPreviewPage(imageFile);
            },
            child: const Icon(Icons.photo_library),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
