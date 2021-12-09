import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressWidgets extends StatelessWidget {
  const AddressWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      // padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const SizedBox(width: 10.0),
                const SizedBox(
                  width: 26.0,
                  child: CircleAvatar(
                    backgroundColor: mediaBackColor,
                    child: Icon(Icons.location_pin,
                        color: Colors.white, size: 14.0),
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: GoogleFonts.playfairDisplay(),
                    ),
                    Text("601 Lakeland Terrace", style: GoogleFonts.archivo()),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            width: 1,
            height: 60,
          ),
          Expanded(
            child: Row(
              children: [
                const SizedBox(width: 10.0),
                const SizedBox(
                  width: 26.0,
                  child: CircleAvatar(
                    backgroundColor: mediaBackColor,
                    child: Icon(Icons.phone, color: Colors.white, size: 14.0),
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: GoogleFonts.playfairDisplay(),
                    ),
                    Text("91 6456584156", style: GoogleFonts.archivo()),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
