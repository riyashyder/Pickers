import 'package:flutter/material.dart';

// class SafeAreaRef extends StatelessWidget {
//   const SafeAreaRef({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Text('This is an example for SafeArea',
//           style: TextStyle(
//             color: Colors.teal,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }
class SafeAreaRef extends StatelessWidget {
  const SafeAreaRef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is an example for SafeArea',
      style: TextStyle(
        color: Colors.teal,
        fontSize: 20,
      ),
      ),
    );
  }
}