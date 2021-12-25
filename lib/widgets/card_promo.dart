// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:challenge_flutter_1_restaurant/models/card_promo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cards.length,
          itemBuilder: (BuildContext context, int index) {
            CardPromo card = cards[index];
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  height: 170,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage(card.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 110,
                        ),
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 12,
                                left: 12,
                              ),
                              child: Text(
                                card.name,
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 4,
                                    left: 12,
                                  ),
                                  child: Text(
                                    card.priceAfterDisc,
                                    style: GoogleFonts.sourceSansPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 4,
                                    left: 11,
                                  ),
                                  child: Text(
                                    card.priceBeforeDisc,
                                    style: GoogleFonts.sourceSansPro(
                                      color: Color(0xffBEBEBE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 1.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// Widget card() {
//   return SizedBox(
//     height: 200,
//     child: ListView(
//       scrollDirection: Axis.horizontal,
//       children: [
//         Row(
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 8),
//               height: 170,
//               width: 160,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(4),
//                 image: DecorationImage(
//                   image: AssetImage(
//                     'assets/images/fruitswithgarlic.jpg',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.12),
//                     spreadRadius: 0,
//                     blurRadius: 10,
//                     offset: Offset(0, 1),
//                   ),
//                 ],
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(
//                       top: 110,
//                     ),
//                     height: 60,
//                     width: 160,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(4),
//                         bottomRight: Radius.circular(4),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(
//                             top: 12,
//                             left: 12,
//                           ),
//                           child: Text(
//                             'Fruits With Garlic',
//                             style: GoogleFonts.sourceSansPro(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(
//                                 top: 4,
//                                 left: 12,
//                               ),
//                               child: Text(
//                                 '22.000',
//                                 style: GoogleFonts.sourceSansPro(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.only(
//                                 top: 4,
//                                 left: 11,
//                               ),
//                               child: Text(
//                                 '24.000',
//                                 style: GoogleFonts.sourceSansPro(
//                                   color: Color(0xffBEBEBE),
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                   decoration: TextDecoration.lineThrough,
//                                   decorationThickness: 1.0,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 8, right: 16),
//               height: 170,
//               width: 160,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(4),
//                 image: DecorationImage(
//                   image: AssetImage(
//                     'assets/images/bananabread.jpg',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.12),
//                     spreadRadius: 0,
//                     blurRadius: 10,
//                     offset: Offset(0, 1),
//                   ),
//                 ],
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(
//                       top: 110,
//                     ),
//                     height: 60,
//                     width: 160,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(4),
//                         bottomRight: Radius.circular(4),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(
//                             top: 12,
//                             left: 12,
//                           ),
//                           child: Text(
//                             'Banana Bread',
//                             style: GoogleFonts.sourceSansPro(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(
//                                 top: 4,
//                                 left: 12,
//                               ),
//                               child: Text(
//                                 '10.500',
//                                 style: GoogleFonts.sourceSansPro(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.only(
//                                 top: 4,
//                                 left: 11,
//                               ),
//                               child: Text(
//                                 '15.000',
//                                 style: GoogleFonts.sourceSansPro(
//                                   color: Color(0xffBEBEBE),
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                   decoration: TextDecoration.lineThrough,
//                                   decorationThickness: 1.0,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
