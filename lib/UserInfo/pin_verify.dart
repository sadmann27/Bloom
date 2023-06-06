import 'package:flutter/material.dart';
import 'package:bloom/UserInfo/profile.dart';

class PinVerifyPage extends StatefulWidget {
  final String oldPin;

  PinVerifyPage({required this.oldPin});

  @override
  _PinVerifyPageState createState() => _PinVerifyPageState();
}

class _PinVerifyPageState extends State<PinVerifyPage> {
  List<TextEditingController> _pinControllers = List.generate(4, (_) => TextEditingController());
  List<TextEditingController> _confirmPinControllers = List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    _pinControllers.forEach((controller) => controller.dispose());
    _confirmPinControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _saveNewPin() {
    String newPin = _pinControllers.map((controller) => controller.text).join();
    // Save the new PIN logic here
    print('New PIN: $newPin');
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change PIN'),
        backgroundColor: Color(0xFF0C9869),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter new PIN:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                    (index) => SizedBox(
                  width: 60.0,
                  child: TextFormField(
                    controller: _pinControllers[index],
                    obscureText: true,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20.0),
                    decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.all(16.0),
                      border: OutlineInputBorder(),
                      hintText: '-',
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < _pinControllers.length - 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Confirm new PIN:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                    (index) => SizedBox(
                  width: 60.0,
                  child: TextFormField(
                    controller: _confirmPinControllers[index],
                    obscureText: true,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20.0),
                    decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.all(16.0),
                      border: OutlineInputBorder(),
                      hintText: '-',
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < _confirmPinControllers.length - 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String newPin = _pinControllers.map((controller) => controller.text).join();
                String confirmPin = _confirmPinControllers.map((controller) => controller.text).join();
                if (newPin == confirmPin) {
                  _saveNewPin();
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('PIN Mismatch'),
                        content: Text('The entered PINs do not match. Please try again.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
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
                'Save',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
