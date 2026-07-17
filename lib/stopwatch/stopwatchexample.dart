import 'package:flutter/material.dart';
import 'dart:async';

class MyStopWatch extends StatefulWidget {
  const MyStopWatch({super.key});

  @override
  State<MyStopWatch> createState() => _MyStopWatchState();
}

class _MyStopWatchState extends State<MyStopWatch> {
  int seconds = 0;
  late Timer timer;
  bool isRunning = false;
  void _startTimer() {
    if (!isRunning) {
      isRunning = true;
    }
  }

  void _stopTimer() {
    if (isRunning) {
      isRunning = false;
    }
  }

  void _onTick(Timer timer) {
    setState(() {
      if (isRunning) seconds++;
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  String secondstotext() => seconds <= 1 ? '1 second' : '$seconds seconds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              secondstotext(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.green,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: _startTimer,
                child: const Text("Start"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                onPressed: _stopTimer,
                child: const Text("Stop"),
              ),
              SizedBox(width: 20),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                onPressed: null,
                icon: const Icon(Icons.start),
              ),
            ],
          ),
        ],
      ),
    );
  }
}