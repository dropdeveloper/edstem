import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseHoldWidget extends StatelessWidget {
  const HouseHoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Households",
            style: GoogleFonts.playfairDisplay(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
          const SizedBox(height: 5.0),
          Container(
            color: Colors.red,
            height: 3.0,
            width: 16.0,
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: _personItem(face2, "Rachel Thomas", "Wife"),
              ),
              Expanded(
                child: _personItem(face1, "Aby Thomas", "Sister"),
              ),
              Expanded(
                child: _personItem(profileImage1, "Aby Thomas", "Brother"),
              ),
            ],
          )
        ],
      ),
      decoration: const BoxDecoration(
        color: containerBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
        ),
      ),
    );
  }

  Widget _personItem(ImageProvider image, String name, String relation) {
    return Column(
      children: [
        SizedBox(
          child: CircleAvatar(
            radius: 40,
            backgroundImage: image,
          ),
        ),
        const SizedBox(height: 3.0),
        Text(name,
            style: GoogleFonts.playfairDisplay(
              fontSize: 16.0,
              letterSpacing: 0.8,
              fontWeight: FontWeight.bold,
              color: textColor,
            )),
        const SizedBox(height: 3.0),
        Text(
          relation,
          style: GoogleFonts.archivo(color: bottomBarItemTextColor),
        ),
      ],
    );
  }
}
