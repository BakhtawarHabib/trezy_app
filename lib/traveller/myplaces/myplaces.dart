import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/profile/mainprofile.dart';
import 'package:trezy_app/traveller/search/searchscreen.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  _PlacesScreenState createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      themecolor.withOpacity(0.7), BlendMode.darken),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 20),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: themecolor),
                              borderRadius: BorderRadius.circular(30)),
                          width: MediaQuery.of(context).size.width,
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            style: const TextStyle(color: Color(0xff6A6A6A)),
                            cursorColor: const Color(0xFF075E54),
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(bottom: 15.0),
                                prefixIcon: const Icon(Icons.arrow_back_ios),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    Get.to(() => SearchScreen());
                                  },
                                  child: Container(
                                      height: 55.h,
                                      margin: const EdgeInsets.only(
                                          right: 10,
                                          left: 10,
                                          top: 10,
                                          bottom: 10),
                                      decoration: BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Colors.black
                                                    .withOpacity(0.2))),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: SvgPicture.asset(
                                            "images/filter.svg"),
                                      )),
                                ),
                                border: InputBorder.none,
                                hintText: 'Buffalo,NY',
                                hintStyle: black14regular),
                          ),
                        )),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: const EdgeInsets.only(top: 130),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "30+ fun places",
                            style: black14regular,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Divider(
                              thickness: 1.5,
                            ),
                          ),
                          Column(
                            children: List.generate(
                              3,
                              (index) => Column(
                                children: [
                                  Container(
                                    height: 418.h,
                                    width: 346.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          kDefaultShadow = BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 10,
                                          )
                                        ],
                                        color: whitecolor),
                                    child: Column(
                                      children: [
                                        Customheaderlisttile(),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                            top: BorderSide(
                                              color:
                                                  themecolor.withOpacity(0.3),
                                            ),
                                            left: BorderSide(
                                              color:
                                                  themecolor.withOpacity(0.3),
                                            ),
                                          )),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                    "Know more about Betsy"),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(bigtext)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 20),
                                          child: Row(
                                            children: [
                                              const RotatedBox(
                                                  quarterTurns: 3,
                                                  child:
                                                      Text("Betsy’s Profile")),
                                              Expanded(
                                                  child: InkWell(
                                                onTap: () {
                                                  Get.to(() => SearchScreen());
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: themecolor
                                                            .withOpacity(0.2)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            const Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child:
                                                                  CircleAvatar(
                                                                maxRadius: 25,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        "images/girl.png"),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text("Max S."),
                                                                Text(
                                                                    "The best guide ever!")
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            const Icon(
                                                              Icons.star,
                                                              color: Color(
                                                                  0xffFFCE00),
                                                              size: 17,
                                                            ),
                                                            Text(
                                                              "4.6",
                                                              style:
                                                                  black13regular,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ))
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: InkWell(
                                                onTap: () {
                                                  Get.to(() =>
                                                      MainProfileScreen());
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 54.h,
                                                  child: Text(
                                                    "See Profile",
                                                    style:
                                                        travellertheme14style,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color: themecolor)),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: themecolor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              height: 54.h,
                                              width: 55.w,
                                              child: SvgPicture.asset(
                                                "images/chat.svg",
                                                color: whitecolor,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Customheaderlisttile() {
    return ListTile(
      leading: const CircleAvatar(
        maxRadius: 30,
        backgroundImage: AssetImage("images/girl.png"),
      ),
      title: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                "Betsy R.",
                style: black17regular,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text("(130)", style: grey13regular),
            ],
          ),
        ],
      ),
      subtitle: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Text("From", style: grey13regular),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Buffalo, NY",
                style: black14regular,
              ),
            ],
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              children: [
                Text("Specialties", style: grey14regular),
                Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              width: 60,
                              height: 40,
                              child: Text(
                                specialities[index],
                                style: white14normal,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: themecolor),
                            ),
                          )),
                )
              ],
            ),
          )
        ],
      ),
      trailing: FittedBox(
        fit: BoxFit.fill,
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fill,
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFCE00),
                    size: 17,
                  ),
                  Text(
                    "4.6",
                    style: black13regular,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
