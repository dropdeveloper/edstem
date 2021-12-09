import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';

class MediaButton extends StatelessWidget {
  final ImageProvider image;
  const MediaButton({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      child: Image(image: image, width: 22.0),
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: image,
        //   scale: 0.01,
        //   fit: BoxFit.contain,
        // ),
        borderRadius: BorderRadius.circular(10.0),
        color: mediaBackColor,
      ),
    );
  }
}
