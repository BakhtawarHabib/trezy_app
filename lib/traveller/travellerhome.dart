import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/customdrawer.dart';

import 'package:trezy_app/widgets/places.dart';
import 'package:trezy_app/widgets/popularadvisor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: scaffoldKey,
          drawer: CustomDrawer(),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(),
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, top: 20),
                    decoration: BoxDecoration(
                        boxShadow: [kDefaultShadow],
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                const Color(0xff69ACDF).withOpacity(0.5),
                                BlendMode.darken),
                            image: const AssetImage("images/background.png"),
                            fit: BoxFit.cover)),
                    height: 300.h,
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          // width: MediaQuery.of(context).size.width - 70,
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {
                                      scaffoldKey.currentState!.openDrawer();
                                    },
                                    child:
                                        SvgPicture.asset("images/drawer.svg")),
                                const CircleAvatar(
                                  maxRadius: 25,
                                  backgroundImage:
                                      AssetImage("images/girl.png"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/smallsize.png",
                              ),
                              Text(
                                "Select a city. Find Trezy advisor. Plan your trip",
                                style: white14normal,
                              )
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    top: 250,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 15.h),
                            InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: themecolor),
                                      borderRadius: BorderRadius.circular(11)),
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    style: const TextStyle(
                                        color: Color(0xff6A6A6A)),
                                    cursorColor: const Color(0xFF075E54),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(bottom: 23.0),
                                      prefixIcon: Container(
                                          height: 65.h,
                                          margin: const EdgeInsets.only(
                                              right: 9, top: 10, bottom: 10),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                right: BorderSide(
                                                    color: Colors.black
                                                        .withOpacity(0.2))),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: SvgPicture.asset(
                                                "images/search.svg"),
                                          )),
                                      border: InputBorder.none,
                                      hintText: 'Search',
                                      hintStyle: const TextStyle(
                                        color: themecolor,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 15.h),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Right now at New York ",
                                    style: black17regular,
                                  ),
                                  const Text(
                                    "See all",
                                    style: TextStyle(
                                        color: themecolor,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline),
                                  )
                                ],
                              ),
                            ),
                            Container(height: 230.h, child: PlacesWidgetList()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Popular Advisors",
                                    style: black17regular,
                                  ),
                                  const Text(
                                    "See all",
                                    style: TextStyle(
                                        color: themecolor,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline),
                                  )
                                ],
                              ),
                            ),
                            // Container(height: 230.h, child: PlacesWidgetList()),
                            Container(
                                height: 140.h, child: PopularAdvisorList()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
