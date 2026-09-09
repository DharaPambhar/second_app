import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool ischecked = false;

  void updateCheckBox() {
    setState(() {
      ischecked = !ischecked;
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
            CheckboxListTile(
              title: const Text("Check Box"),
              value: ischecked,
              onChanged: (v) {
                setState(() {
                  ischecked = v!;
                });
              },
            ),

            Text(
              'Read ${ischecked ? 'Agree' : 'Disagree'}',
              style: const TextStyle(fontSize: 20),
            ),

            ElevatedButton(
              onPressed: updateCheckBox,
              child: const Text('Agree/Disagree'),
            ),
          ],
        ),
      ),
    );
  }
}