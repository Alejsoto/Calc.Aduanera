import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xff2E305F), Color(0xff202333)]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //este es el background
        Container(
          decoration: boxDecoration,
        ),

        //este es para la caja rosa
        // Positioned(top: -150, left: -150, child: _CajaRosa()),
      ],
    );
  }
}

// class _CajaRosa extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Transform.rotate(
//       angle: -pi / 5,
//       child: Container(
//           width: 300,
//           height: 300,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(80),
//               gradient: LinearGradient(colors: [
//                 Color.fromARGB(233, 98, 168, 1),
//                 Color.fromARGB(241, 142, 172, 1)
//               ]))),
//     );
//   }
// }
