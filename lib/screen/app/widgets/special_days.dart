import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialDaysWidget extends StatelessWidget {
  const SpecialDaysWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelColor: textColor,
              labelStyle: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 0.8,
              ),
              unselectedLabelColor: Colors.grey.shade300,
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0, color: Colors.red),
                  insets: EdgeInsets.only(right: 60.0, left: 2.0)),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Tab(
                  text: "Birthdays",
                ),
                Tab(
                  text: "Wedding Anniversary",
                ),
              ],
            ),
          ),
        ),
        SizedBox(
            height: 100,
            child: Stack(
              children: [
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _itemWidget(),
                    _itemWidget(),
                    _itemWidget(),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white70,
                          Colors.white10,
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.white10,
                      Colors.white70,
                      Colors.white,
                    ])),
                  ),
                )
              ],
            ))
      ],
    );
  }

  Widget _itemWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            const CircleAvatar(
              radius: 32.0,
              backgroundImage: face1,
            ),
            Positioned(
              top: -1.0,
              right: -1.0,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: const Image(image: bday, width: 14.0),
                decoration: BoxDecoration(
                  color: mediaBackColor,
                  border: Border.all(color: Colors.white, width: 3.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aby Thomas",
              style: GoogleFonts.playfairDisplay(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            const SizedBox(height: 4.0),
            Text("Feb 25 2021, Monday", style: GoogleFonts.archivo()),
          ],
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }
}
