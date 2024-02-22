// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:iteriro/generated/assets.dart';
// import 'package:tuple/tuple.dart';
//
//
// class WBottomNavigationBar extends StatelessWidget {
//   const WBottomNavigationBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       height: 70,
//       margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.symmetric(
//         vertical: 12,
//         horizontal: 22,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       duration: const Duration(milliseconds: 700),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           for (final item in bottomBarItems)
//             InkWell(
//               onTap: () {
//
//               },
//               child: Container(
//                 height: 45,
//                 width: 45,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(35),
//                 ),
//                 child: Stack(
//                   children: [
//                     if (item.item5 > 0)
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Badge(
//                           label: Text(item.item5.toString()),
//                         ),
//                       ),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: ListView(
//                         shrinkWrap: true,
//                         children: [
//                           Center(
//                             child: AnimatedSwitcher(
//                               duration: const Duration(milliseconds: 700),
//                               transitionBuilder: (child, anim) {
//                                 return FadeTransition(
//                                   opacity: anim,
//                                   child: child,
//                                 );
//                               },
//                               child: SvgPicture.asset(
//                                 item.item4 == currentPage
//                                     ? item.item2
//                                     : item.item3,
//                                 height: 25,
//                                 width: 25,
//                                 color: item.item4 == currentPage
//                                     ? Colors.white
//                                     : Colors.white38,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 5),
//                           Text(
//                             item.item1,
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 10,
//                               color: item.item4 == currentPage
//                                   ? Colors.white
//                                   : Colors.white38,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
