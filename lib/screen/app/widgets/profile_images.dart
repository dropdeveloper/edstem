import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';

class ProfileImages extends StatelessWidget {
  const ProfileImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: profileImage1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.transparent, width: 2.0),
                ),
              ),
            ),
            Positioned(
              right: 1.0,
              child: CircleAvatar(
                backgroundImage: profileImage2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(color: Colors.white, width: 2.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
