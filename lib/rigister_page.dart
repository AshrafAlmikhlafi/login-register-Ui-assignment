// import 'package:flutter/material.dart';
//
// class BackGround extends StatelessWidget {
//   final Widget child;
//
//   const BackGround({
//     Key? key,
//     required this.child,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: double.infinity,
//       height: size.height,
//       child: Stack(
//         // fit: StackFit.expand,
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             top: -20,
//             right: -50,
//             child: Image.asset(
//               'images/topright.png',
//               width: size.width,
//             ),
//           ),
//           Positioned(
//             top: -35,
//             right: -50,
//             child: Image.asset(
//               'images/topright2.png',
//               width: size.width,
//             ),
//           ),
//           /*    Positioned(
//             top: 0,
//             right: 0,
//             child: Image.asset(
//               'images/person.png',
//               width: size.width * 0.35,
//             ),
//           ),*/
//           Positioned(
//             bottom: -9.5,
//             right: -33,
//             child: Image.asset(
//               'images/middlebotton.png',
//               width: size.width,
//             ),
//           ),
//           Positioned(
//             bottom: -20,
//             right: 40,
//             child: Image.asset(
//               'images/bottomleft.png',
//               width: size.width,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
