import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/account/accountscreen.dart';
import 'package:trezy_app/traveller/mytrips/mytips.dart';
import 'package:trezy_app/traveller/profile/profilescreen.dart';

class CustomDrawer extends StatelessWidget {
  List drawernavigation = [
    ProfileScreen(),
    AccountScreen(),
    MyTripsScreen(),
    MyTripsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: themecolor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset("images/drawer.svg"),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        "Menu",
                        style: white25regular,
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      4,
                      (index) => InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      drawernavigation[index]));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                drawerlist[index],
                                style: white21regular,
                              ),
                            ),
                          )),
                )
              ],
            ),
          )),
    );
  }
}
