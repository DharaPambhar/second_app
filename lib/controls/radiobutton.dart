import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String gender = 'Male';

  void setRadioValue() {
    setState(() {
      gender = 'Female';
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile<String>(
              title: const Text('Male'),
              value: 'Male',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    gender = value;
                  }
                });
              },
            ),

            RadioListTile<String>(
              title: const Text('Female'),
              value: 'Female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    gender = value;
                  }
                });
              },
            ),

            Text(
              'Selected Gender: $gender',
              style: const TextStyle(fontSize: 20),
            ),

            ElevatedButton(
              onPressed: setRadioValue,
              child: const Text('Set Female'),
            ),
          ],
        ),
      ),
    );
  }
}