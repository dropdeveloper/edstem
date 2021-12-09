import 'package:edstem/screen/app/widgets/address_widget.dart';
import 'package:edstem/screen/app/widgets/house_hold_widget.dart';
import 'package:edstem/screen/app/widgets/media_icon.dart';
import 'package:edstem/screen/app/widgets/special_days.dart';
import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              title: const Center(
                child: Text(
                  'Trinity mar Thoma Church, Houston',
                  style:
                      TextStyle(color: bottomBarUnselectColor, fontSize: 18.0),
                ),
              ),
              floating: false,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  height: 150.0,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 20.0,
                        top: 20.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        width: size.width,
                        child: const CircleAvatar(
                            radius: 50.0, backgroundImage: profileImage1),
                      ),
                    ],
                  ),
                ),
                //profile name
                Column(
                  children: [
                    Text(
                      "Abraham Thomas",
                      style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8,
                        color: textColor,
                        fontSize: 22.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Peral Land East",
                          style: GoogleFonts.archivo(
                              letterSpacing: 0.8,
                              fontSize: 16.0,
                              color: bottomBarItemTextColor),
                        ),
                        Container(
                          width: 8.0,
                          height: 8.0,
                          margin:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          color: bottomBarItemTextColor,
                        ),
                        Text(
                          "#565677",
                          style: GoogleFonts.archivo(
                              letterSpacing: 0.8,
                              fontSize: 16.0,
                              color: bottomBarItemTextColor),
                        ),
                        Container(
                          width: 8.0,
                          height: 8.0,
                          margin:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          color: bottomBarItemTextColor,
                        ),
                        Text(
                          "Male",
                          style: GoogleFonts.archivo(
                              letterSpacing: 0.8,
                              fontSize: 16.0,
                              color: bottomBarItemTextColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    //media buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        MediaButton(image: twift),
                        MediaButton(image: lin),
                        MediaButton(image: face),
                        MediaButton(image: whasapp),
                        MediaButton(image: gp)
                      ],
                    ),
                  ],
                ),
                //contact number and address
                const AddressWidgets(),
                //hosue hold
                const HouseHoldWidget(),
                //days
                const SpecialDaysWidget(),
              ],
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ));
  }
}
