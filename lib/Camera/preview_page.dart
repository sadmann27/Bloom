import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image/image.dart' as img;


class DiseaseInfo {
  final String name;
  final String description;
  final String symptoms;
  final String cure;
  final List<String> recommendedProducts;

  DiseaseInfo({
    required this.name,
    required this.description,
    required this.symptoms,
    required this.cure,
    required this.recommendedProducts,
  });
}

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key, required this.imageFile}) : super(key: key);

  final File? imageFile;

  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {

  List<String> _labels = [];
  String? _prediction;
  DiseaseInfo? _diseaseInfo;

  // Define the information for each disease
  final Map<String, DiseaseInfo> _diseaseData = {
    'Bacterial Spot': DiseaseInfo(
      name: 'Bacterial Spot',
      description: 'Bacterial spot is a common plant disease caused by bacteria.',
      symptoms: 'Symptoms include dark, water-soaked spots on leaves and fruits.',
      cure: 'Treatment includes removing infected plants and using copper-based fungicides.',
      recommendedProducts: ['Product A', 'Product B'],
    ),
    'Black Rot': DiseaseInfo(
      name: 'Black Rot',
      description: 'Black rot is a fungal disease that affects plants.',
      symptoms: 'Symptoms include black, necrotic lesions on leaves and fruits.',
      cure: 'Treatment includes pruning affected parts and applying fungicides.',
      recommendedProducts: ['Product C', 'Product D'],
    ),
    // Add information for other diseases
  };

  @override
  void initState() {
    super.initState();

    loadLabels();
  }

  /*Future<void> loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('assets/plant.tflite');
    } catch (e) {
      if (kDebugMode) {
        print('Failed to load model: $e');
      }
    }
  }

   */

  Future<void> loadLabels() async {
    try {
      final file = await File('assets/text.txt').readAsString();
      setState(() {
        _labels = file.split('\n');
      });
    } catch (e) {
      if (kDebugMode) {
        print('Failed to load labels: $e');
      }
    }
  }

  Future<void> classifyImage() async {
    if (widget.imageFile == null) return;

    try {
      final imageBytes = await widget.imageFile!.readAsBytes();
      final image = img.decodeImage(imageBytes)!;
      final resizedImage = img.copyResize(image, width: 224, height: 224);
      final input = ImageProcessorUtils.reshapeFloat32List(
        resizedImage,
        imageMean: 127.5,
        imageStd: 127.5,
        inputSize: 224,
        numChannels: 3,
      );

      final output = List.filled(_labels.length, 0.0);



      final results = output;
      setState(() {
        _prediction = _labels[results.indexOf(results.reduce((a, b) => a > b ? a : b))];
        _diseaseInfo = _diseaseData[_prediction!];
      });
    } catch (e) {
      if (kDebugMode) {
        print('Failed to classify image: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.imageFile != null)
              Image.file(
                widget.imageFile!,
                fit: BoxFit.cover,
                width: 250,
              ),
            const SizedBox(height: 24),
            Text(widget.imageFile != null ? widget.imageFile!.path : 'No image selected'),
            ElevatedButton(
              onPressed: classifyImage,
              child: const Text('Classify Image'),
            ),
            if (_prediction != null)
              Column(
                children: [
                  Text('Prediction: $_prediction'),
                  if (_diseaseInfo != null)
                    Column(
                      children: [
                        Text('Description: ${_diseaseInfo!.description}'),
                        Text('Symptoms: ${_diseaseInfo!.symptoms}'),
                        Text('Cure: ${_diseaseInfo!.cure}'),
                        Text('Recommended Products: ${_diseaseInfo!.recommendedProducts.join(', ')}'),
                      ],
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
class ImageProcessorUtils {
  static List<double> reshapeFloat32List(
      img.Image image, {
        double imageMean = 127.5,
        double imageStd = 127.5,
        int inputSize = 224,
        int numChannels = 3,
      }) {
    final transformedBytes = List<double>.filled(
      inputSize * inputSize * numChannels,
      0.0,
      growable: false,
    );

    for (var y = 0; y < inputSize; y++) {
      for (var x = 0; x < inputSize; x++) {
        final pixel = image.getPixel(x, y);

        transformedBytes[numChannels * (y * inputSize + x) + 0] =
            (img.getRed(pixel) - imageMean) / imageStd;
        transformedBytes[numChannels * (y * inputSize + x) + 1] =
            (img.getGreen(pixel) - imageMean) / imageStd;
        transformedBytes[numChannels * (y * inputSize + x) + 2] =
            (img.getBlue(pixel) - imageMean) / imageStd;
      }
    }

    return transformedBytes;
  }
}