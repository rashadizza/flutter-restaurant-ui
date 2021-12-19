// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

Widget carousel() {
  return Column(
    children: [
      SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/card_promo_2.png',
                      height: 120,
                      width: 312,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/card_promo_1.png',
                      height: 120,
                      width: 312,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/card_promo_3.png',
                      height: 120,
                      width: 312,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8, right: 4),
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEAEAEA),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, right: 4),
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff00B412),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEAEAEA),
            ),
          ),
        ],
      ),
    ],
  );
}
