import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/advisor/makeprofile.dart';
import 'package:trezy_app/advisor/settingsadv.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/customtextfield.dart';

import 'advisorinbox.dart';

class AdvisorHomeScreen extends StatefulWidget {
  const AdvisorHomeScreen({Key? key}) : super(key: key);

  @override
  _AdvisorHomeScreenState createState() => _AdvisorHomeScreenState();
}

class _AdvisorHomeScreenState extends State<AdvisorHomeScreen> {
  List names = ["Guide Sold", "Guide Request", "Messages"];
  List numbers = ["54", "12", "02"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      const Color(0xffA3A3E6).withOpacity(0.2),
                      BlendMode.darken),
                  image: const AssetImage("images/background.png"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    height: 130,
                  ),
                  Text(
                    "Select a city. Find Trezy advisor. Plan your trip",
                    style: white14normal,
                  )
                ],
              ),
              SingleChildScrollView(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 190),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage("images/girl.png"),
                              maxRadius: 30,
                            ),
                            title: Row(
                              children: [
                                Text("Betsy Ronald", style: black14regular),
                                SizedBox(
                                  width: 30.w,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFCE00),
                                ),
                                const Text("4.6")
                              ],
                            ),
                            subtitle: Text(
                              "Advisor since Sep 2019",
                              style: grey13regular,
                            ),
                            trailing: InkWell(
                              onTap: () {
                                Get.to(() => const SettingsAdv());
                              },
                              child: SvgPicture.asset(
                                "images/settings.svg",
                                height: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              "Summary",
                              style: black17regular,
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                  3,
                                  (index) => Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(
                                                () => const AdvInboxScreen());
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 105.h,
                                              // width: 117.w,
                                              decoration: BoxDecoration(
                                                color: whitecolor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                boxShadow: [kDefaultShadow],
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      names[index],
                                                      style: black13regular,
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Text(
                                                      numbers[index],
                                                      style: grey23regular,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ))),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              "Activity",
                              style: black17regular,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Text(
                              "Today",
                              style: grey13regular,
                            ),
                          ),
                          Column(
                            children: List.generate(
                              activityicons.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 53.h,
                                  decoration: BoxDecoration(
                                    color: whitecolor,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [kDefaultShadow],
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(activityicons[index]),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        activitynames[index],
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                        child: Text(
                                          activitysubtitle[index],
                                          style: grey14regular,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Text(
                              "Yesterday",
                              style: grey13regular,
                            ),
                          ),
                          Column(
                            children: List.generate(
                              activityicons.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 53.h,
                                  decoration: BoxDecoration(
                                    color: whitecolor,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [kDefaultShadow],
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(activityicons[index]),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        activitynames[index],
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                        child: Text(
                                          activitysubtitle[index],
                                          style: grey14regular,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
