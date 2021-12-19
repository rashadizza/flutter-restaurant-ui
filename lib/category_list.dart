// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/rendering.dart';
import 'theme.dart';

Widget category() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffEEEDED),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    left: 15,
                    right: 15,
                    bottom: 2,
                  ),
                  child: Image.asset(
                    'assets/images/meatball.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                Text(
                  'Menu Sehat',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 16),
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffEEEDED),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    left: 15,
                    right: 15,
                    bottom: 2,
                  ),
                  child: Image.asset(
                    'assets/images/promo.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                Text(
                  'Promo',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 16),
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffEEEDED),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    left: 15,
                    right: 15,
                    bottom: 2,
                  ),
                  child: Image.asset(
                    'assets/images/chicken.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                Text(
                  'Menu Ayam',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 16),
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffEEEDED),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    left: 15,
                    right: 15,
                    bottom: 2,
                  ),
                  child: Image.asset(
                    'assets/images/fastfood.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                Text(
                  'Cepat Saji',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
