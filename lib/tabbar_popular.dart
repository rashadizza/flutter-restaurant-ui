// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class TabbarPop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/pizza.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pizza Hut',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            left: 0,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 4,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffECECEC),
                            size: 12.36,
                          ),
                        ),
                        Text(
                          '4.5',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8D92A3)),
                        ),
                      ],
                    ),
                    Text(
                      '3.4 KM',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/kfc.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KFC',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            left: 0,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 4,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffECECEC),
                            size: 12.36,
                          ),
                        ),
                        Text(
                          '4.7',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8D92A3)),
                        ),
                      ],
                    ),
                    Text(
                      '4.8 KM',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/mcd.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'McDonald',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            left: 0,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 1.55,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffFFC700),
                            size: 12.36,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 4,
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: Color(0xffECECEC),
                            size: 12.36,
                          ),
                        ),
                        Text(
                          '4.6',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8D92A3)),
                        ),
                      ],
                    ),
                    Text(
                      '8.9 KM',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
