import 'package:bloom/UserInfo/pin_verify.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  List<TextEditingController> _oldPinControllers = List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    _oldPinControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _navigateToVerifyPin(String oldPin) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PinVerifyPage(oldPin: oldPin)),
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
              'Enter old PIN:',
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
                    controller: _oldPinControllers[index],
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
                      if (value.isNotEmpty && index < _oldPinControllers.length - 1) {
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
                String oldPin = _oldPinControllers.map((controller) => controller.text).join();
                _navigateToVerifyPin(oldPin);
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
                'Confirm',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
