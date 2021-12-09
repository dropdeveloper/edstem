import 'package:edstem/screen/app/widgets/bottom_bar_menu.dart';
import 'package:edstem/screen/app/widgets/profile_images.dart';
import 'package:edstem/screen/profile.dart';
import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: bottomBarUnselectColor,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          centerTitle: true,
          title: const Image(image: logoImage, width: 59.0),
          actions: const [ProfileImages()],
        ),
        body: const Profile(),
        bottomNavigationBar: const BottomBarMenu());
  }
}
