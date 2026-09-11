import 'package:flutter/material.dart';

class CalenderExample extends StatefulWidget {
  const CalenderExample({super.key});

  @override
  State<CalenderExample> createState() => _CalenderExampleState();
}

class _CalenderExampleState extends State<CalenderExample> {
  DateTime? data;

  Future<void> pickData() async{
    final picked = await showDatePicker(
      context: context,
      initialDate: data ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if(!mounted || picked == null)return;
      setState(() => data = picked);
  }

void setDatevalue(){
  setState(() {
    data = DateTime(2024,1,1);
  });
}

  @override
  Widget build(BuildContext context) {
    final text = data == null ? "No data:":"${data!.day}"+"/"+"${data!.month}"+"/"+"${data!.year}";
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
              onPressed: pickData,
              child: const Text("Pick Date")
              ),
              ElevatedButton(
                onPressed: setDatevalue,
                child: const Text("Set date to 01/01/2024")
              )
          ],
        ),
      ),
    );
  }
}