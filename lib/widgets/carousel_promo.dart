// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:challenge_flutter_1_restaurant/models/carousel_promo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class CarouselBannerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: banners.length,
              itemBuilder: (BuildContext context, int index) {
                CarouselPromo banner = banners[index];
                return Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Image(
                        height: 120,
                        width: 312,
                        image: AssetImage(banner.imageUrl),
                      ),
                    ),
                  ],
                );
              },
            ),
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
}
