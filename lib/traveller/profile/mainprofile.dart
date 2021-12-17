import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/chat/chatmainscreen.dart';
import 'package:trezy_app/traveller/profile/tellabouttrip.dart';
import 'package:trezy_app/traveller/search/searchscreen.dart';
import 'package:trezy_app/widgets/backarrow.dart';

import 'bestycityguide.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({Key? key}) : super(key: key);

  @override
  _MainProfileScreenState createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  List endbox = [
    "Check Betsy’s\nCity Guide",
    "Check\nCustomized\nItinerary",
    "Chat with\nBetsy"
  ];
  List endboxnavigation = [
    BestyCityGuide(),
    TellAboutTrip(),
    ChatPageView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Color(0xffF8F8F8)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BackArow(),
                        Text("Betsy’s Profile"),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/traveller.png"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Container(
                        margin: const EdgeInsets.only(top: 90),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: Column(
                          children: [
                            Column(
                              children: List.generate(
                                1,
                                (index) => Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40)),
                                          // boxShadow: [
                                          //   kDefaultShadow = BoxShadow(
                                          //     color:
                                          //         Colors.grey.withOpacity(0.5),
                                          //     blurRadius: 10,
                                          //   )
                                          // ],
                                          color: whitecolor),
                                      child: Column(
                                        children: [
                                          Customheaderlisttile(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                top: BorderSide(
                                                  color: themecolor
                                                      .withOpacity(0.3),
                                                ),
                                                left: BorderSide(
                                                  color: themecolor
                                                      .withOpacity(0.3),
                                                ),
                                              )),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(19.0),
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
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 20),
                                            child: Row(
                                              children: [
                                                const RotatedBox(
                                                    quarterTurns: 3,
                                                    child: Text(
                                                        "Betsy’s Profile")),
                                                Expanded(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          color: themecolor
                                                              .withOpacity(
                                                                  0.2)),
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Text(
                                                            "What is your favorite way to spend a \nSaturday night?\n\nGabbing a glass of wine at a bar with my \nfriend’s house or with my boyfriend."),
                                                      )),
                                                ))
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: List.generate(
                                              2,
                                              (index) => Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 0,
                                                        horizontal: 20),
                                                child: Row(
                                                  children: [
                                                    const RotatedBox(
                                                        quarterTurns: 3,
                                                        child: Text("")),
                                                    Expanded(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                          decoration: BoxDecoration(
                                                              color: themecolor
                                                                  .withOpacity(
                                                                      0.2)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                                betsyanswers[
                                                                    index]),
                                                          )),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                              children: <Widget>[
                                                const Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFCE00),
                                                  size: 25,
                                                ),
                                                Text(
                                                  "4.6",
                                                  style: black21regular,
                                                ),
                                                Text(
                                                  "(130 reviews)",
                                                  style: black21regular,
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 220.h,
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: 2,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Container(
                                                    margin: EdgeInsets.all(15),
                                                    height: 215.h,
                                                    width: 330.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            color: greycolor
                                                                .withOpacity(
                                                                    0.6))),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Image.asset(
                                                                  "images/boy1.png"),
                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Max S.",
                                                                    style:
                                                                        black14regular,
                                                                  ),
                                                                  Text(
                                                                    "2 weeks ago",
                                                                    style:
                                                                        grey13regular,
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 15.h,
                                                          ),
                                                          Text(
                                                            "The best guide ever!",
                                                            style:
                                                                black14regular,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 50.h,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: greycolor
                                                    .withOpacity(0.6))),
                                        child: const Text("Show all reviews"),
                                      ),
                                    ),
                                    FittedBox(
                                      child: Row(
                                          children: List.generate(
                                        3,
                                        (index) => InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        endboxnavigation[
                                                            index]));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 118.h,
                                              width: 122.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [kblueShadow],
                                                  color: whitecolor),
                                              child: Text(
                                                endbox[index],
                                                textAlign: TextAlign.center,
                                                style: travellertheme14style,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
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
