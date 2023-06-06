import 'package:bloom/UserInfo/phone_number.dart';
import 'package:bloom/UserInfo/pin.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  File? _image;
  final picker = ImagePicker();
  bool _isEditing = false;
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  String _displayName = '';

  late AnimationController _animationController;
  late Animation<Alignment> _imageAlignmentAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _imageAlignmentAnimation = AlignmentTween(
      begin: Alignment.center,
      end: Alignment.centerLeft,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? 'Edit Profile' : 'Profile'),
        backgroundColor: Color(0xFF0C9869),
        leading: _isEditing
            ? IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              _isEditing = false;
              _animationController.reverse();
            });
          },
        )
            : null,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Align(
                  alignment: _isEditing ? _imageAlignmentAnimation.value : Alignment.center,
                  child: GestureDetector(
                    onTap: _isEditing ? getImage : null,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        boxShadow: _isEditing
                            ? []
                            : [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                        image: _image != null
                            ? DecorationImage(
                          image: FileImage(_image!),
                          fit: BoxFit.cover,
                        )
                            : null,
                      ),
                      child: _image == null
                          ? Icon(
                        Icons.person,
                        size: 40,
                      )
                          : null,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 16.0),
            if (!_isEditing && _displayName.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      _displayName,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            if (_isEditing)
              Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _firstNameController,
                            style: TextStyle(fontSize: 20.0),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16.0),
                              border: InputBorder.none,
                              hintText: 'First Name',
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 1.0,
                          ),
                          TextFormField(
                            controller: _lastNameController,
                            style: TextStyle(fontSize: 20.0),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16.0),
                              border: InputBorder.none,
                              hintText: 'Last Name',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isEditing = !_isEditing;
                    if (!_isEditing) {
                      String firstName = _firstNameController.text;
                      String lastName = _lastNameController.text;
                      _displayName = '$firstName $lastName';
                    }
                    if (_isEditing) {
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                    }
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0C9869)),
                ),
                child: Text(
                  _isEditing ? 'Save' : 'Edit Profile',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            if (!_isEditing)
              Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/icons8-pin-pad-50.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                    title: Text('Change PIN'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PinPage()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/icons8-phone-number-50.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                    title: Text('Change Phone Number'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhoneNumberPage()),
                      );
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

