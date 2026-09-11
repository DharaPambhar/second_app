import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
String unit = "unit 1";

void setDropDownValue() {
  setState(() {
    unit = "unit 1";
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
            DropdownButton<String> (
              value:unit,
              isExpanded : true,
              items: const [
                DropdownMenuItem(value: "unit 1",child: Text("unit 1"),),
                DropdownMenuItem(value: "unit 2",child: Text("unit 2"),),
                DropdownMenuItem(value: "unit 3",child: Text("unit 3"),),


              ],
              onChanged: (val) {
                setState(() {
                  unit = val!;
                });
              },

        ),
        Text("Selected value: $unit"),
        ElevatedButton(onPressed: setDropDownValue, child: const Text("set unit to unit 3")),
          ],
        ),
      ),
    );
  }
}