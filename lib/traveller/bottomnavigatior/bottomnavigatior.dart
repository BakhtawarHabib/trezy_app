import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:trezy_app/advisor/advisorinbox.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/traveller/chat/travchatbox.dart';
import 'package:trezy_app/traveller/explore/explorescreen.dart';
import 'package:trezy_app/traveller/travellerhome.dart';

import '../myplaces/myplaces.dart';

class BottomNaviagtion extends StatelessWidget {
  PersistentTabController? controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [HomeScreen(), PlacesScreen(), TravInboxScreen(), ExploreScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "images/home.svg",
          color: Colors.grey,
        ),
        icon: SvgPicture.asset("images/home.svg"),
        title: ("Home"),
        activeColorPrimary: themecolor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        inactiveColorSecondary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "images/calender.svg",
          color: Colors.grey,
        ),
        icon: SvgPicture.asset(
          "images/calender.svg",
          color: whitecolor,
        ),
        title: ("Places"),
        activeColorPrimary: themecolor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "images/chat.svg",
          color: Colors.grey,
        ),
        icon: SvgPicture.asset(
          "images/chat.svg",
          color: whitecolor,
        ),
        title: ("Inbox"),
        activeColorPrimary: themecolor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "images/earth.svg",
          color: Colors.grey,
        ),
        icon: SvgPicture.asset(
          "images/earth.svg",
          color: whitecolor,
        ),
        title: ("Explore"),
        activeColorPrimary: themecolor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style10, // Choose the nav bar style with this property.
    );
  }
}
