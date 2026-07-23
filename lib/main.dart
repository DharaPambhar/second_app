// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Scaffold( 
//           appBar: AppBar(
//             title: const Text(
//               'My First Flutter App',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 247, 253, 252),
//               ),
//             ),
//             backgroundColor: Colors.blue,
//           ),
//           body: Stack(
//             children: [
//               Expanded(
//                 child: Container(
//                   margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                   height: 200,
//                   width: double.infinity,
//                   color: Colors.pink,
//                   child: const Center(
//                     child: Text(
//                       'Hello World !!!',
//                       style: TextStyle(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                   height: 150,
//                   width: double.infinity,
//                   color: Colors.deepPurpleAccent,
//                   child: const Center(
//                     child: Text(
//                       'Good Morning!',
//                       style: TextStyle(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
      //             ),
      //           ),
      //         ),
      //         Expanded(
      //           child: Container(
      //             margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      //             height: 100,
      //             width: double.infinity,
      //             color: Colors.amber,
      //             child: const Center(
      //               child: Text(
      //                 'Welcome to App',
      //                 style: TextStyle(
      //                   fontSize: 40,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),

      //         // Expanded(child: FittedBox(child: FlutterLogo())),
      //       ],
      //     ),
      //   ),
      // ),
//     );
//   }
// }



// import 'dart:math';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: const Text("Transform Widget"),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),

//         body: Stack(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 172, 65, 32),
//                   border: Border.all(color: Colors.black, width: 4),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     // Orange Diamond
//                     Transform.rotate(
//                       angle: pi / 4,
//                       child: Container(
//                         width: 210, 
//                         height: 210,
//                         decoration: BoxDecoration(
//                           color: Colors.orange,
//                           border: Border.all(color: Colors.black, width: 4),
//                         ),
//                       ),
//                     ),

//                     // Green Square
//                     Container(
//                       width: 143,
//                       height: 143,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         border: Border.all(color: Colors.black, width: 4),
//                       ),
//                     ),

//                     // Blue Diamond
//                     Transform.rotate(
//                       angle: pi / 4,
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           border: Border.all(color: Colors.black, width: 4),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:second_app/stopwatch/stopwatchexample.dart';

// void main() {
//   runApp(const StopwatchExample());
// }

// class StopwatchExample extends StatelessWidget {
//   const StopwatchExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyStopWatch(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:second_app/screens/todo_screen.dart';

void main(){
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoScreen(),
      debugShowCheckedModeBanner: false
    );
  }
}