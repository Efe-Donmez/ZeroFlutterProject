import 'dart:io';

import 'package:clicker/core/constants/class_items.dart';
import 'package:clicker/router/routers.dart';
import 'package:flutter/material.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  List<AppNavItem> navItems = AppRoute.navItems;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: list(),
      ),
    );
  }

  Row list() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(navItems.length, (index) => item(index)),
    );
  }

  Widget item(int index) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          NavDatas.pageId = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          NavDatas.pageId == index ? navItems[index].selectedIcon : navItems[index].icon,
          Text(
            navItems[index].label,
          ),
          Spacer(
            flex: Platform.isIOS ? 3 : 1,
          )
        ],
      ),
    );
  }
}

abstract class NavDatas {
  static int pageId = 0;
}
