// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/rendering.dart';
import 'carousel_list.dart';
import 'category_list.dart';
import 'card_list.dart';
import 'tabbar_popular.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    Widget header() {
      return SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alamatmu',
                            style: GoogleFonts.sourceSansPro(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Jl. Soekarno Hatta No. 4, \nMadiun',
                            style: GoogleFonts.sourceSansPro(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.black,
                        size: 18,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 45,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Mau makan apa hari ini?',
                    hintStyle: GoogleFonts.sourceSansPro(
                      color: Color(0xff999999),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: Color(0xffEAEAEA),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        borderSide: BorderSide(
                          color: Color(0xffEAEAEA),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                        color: Color(0xffEAEAEA),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget title(String judul, String lihat) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              judul,
              style: GoogleFonts.sourceSansPro(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Text(
              lihat,
              style: GoogleFonts.sourceSansPro(
                color: Color(0xff00B412),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            )
          ],
        ),
      );
    }

    Widget texttambahan(String text) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.sourceSansPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }

    Widget tabbar() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffEAEAEA),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      labelPadding:
                          EdgeInsets.only(bottom: 0, left: 0, right: 0),
                      labelColor: Color(0xff00B412),
                      unselectedLabelColor: Color(0xffBEBEBE),
                      padding: EdgeInsets.only(bottom: 0),
                      labelStyle: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      indicatorPadding: EdgeInsets.only(bottom: 8),
                      indicatorWeight: 3,
                      indicatorColor: Color(0xff00B412),
                      tabs: [
                        Tab(text: 'Terbaru          '),
                        Tab(text: '    Popular   '),
                        Tab(text: '           Rekomendasi           '),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 260,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('Halo'),
                  TabbarPop(),
                  Text('Halo'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              header(),
              SizedBox(height: 20),
              carousel(),
              SizedBox(height: 20),
              title('Pilih kategori', 'Lihat Semua'),
              SizedBox(height: 24),
              category(),
              SizedBox(height: 25),
              title('Voila promo!', 'Lihat Semua'),
              SizedBox(height: 4),
              texttambahan('Ada promo apa ya di sini?'),
              SizedBox(height: 1),
              card(),
              SizedBox(height: 9),
              title('Wah ada resto enak, loh!', ''),
              SizedBox(height: 4),
              texttambahan('Yuk cobain!'),
              // SizedBox(height: 12),
              tabbar(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.explore,
                    size: 24,
                    color: Colors.green,
                  ),
                ),
                label: 'Eksplor',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.assignment,
                    size: 24,
                    color: Color(0xffABABAB),
                  ),
                ),
                label: 'Riwayat',
              ),
            ],
            unselectedLabelStyle: GoogleFonts.sourceSansPro(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            unselectedItemColor: Color(0xffABABAB),
            selectedLabelStyle: GoogleFonts.sourceSansPro(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            selectedItemColor: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
