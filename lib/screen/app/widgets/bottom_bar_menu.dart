import 'package:edstem/utils/app_constant.dart';
import 'package:flutter/material.dart';

class BottomBarMenu extends StatefulWidget {
  final Function(int)? onTap;
  const BottomBarMenu({Key? key, this.onTap}) : super(key: key);

  @override
  State<BottomBarMenu> createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController!.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      print(_tabController!.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0,
      child: DefaultTabController(
        length: 4,
        child: TabBar(
          controller: _tabController,
          labelColor: bottomBarItemTextColor,
          indicatorColor: Colors.red,
          onTap: widget.onTap,
          tabs: [
            Tab(
              text: "Home",
              icon: Icon(Icons.home_outlined,
                  color: _tabController!.index == 0
                      ? Colors.red
                      : bottomBarUnselectColor),
            ),
            Tab(
              text: "Family",
              icon: Icon(Icons.family_restroom_outlined,
                  color: _tabController!.index == 1
                      ? Colors.red
                      : bottomBarUnselectColor),
            ),
            Tab(
              text: "Activity",
              icon: Icon(Icons.local_activity_outlined,
                  color: _tabController!.index == 2
                      ? Colors.red
                      : bottomBarUnselectColor),
            ),
            Tab(
              text: "Contribution",
              icon: Icon(Icons.monetization_on,
                  color: _tabController!.index == 3
                      ? Colors.red
                      : bottomBarUnselectColor),
            ),
          ],
        ),
      ),
    );
  }
}
