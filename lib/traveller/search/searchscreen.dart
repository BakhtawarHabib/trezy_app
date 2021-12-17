import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/calender/calenderscreen.dart';
import 'package:trezy_app/traveller/search/models/categoriesmode.dart';
import 'package:trezy_app/widgets/backarrow.dart';

import 'countersearch.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final bool _selected = false;
  List<CategroyModel>? reportReasons;

  @override
  void initState() {
    super.initState();
    reportReasons = [
      CategroyModel(isSelected: false, category: 'Bar'),
      CategroyModel(isSelected: false, category: 'Winery'),
      CategroyModel(isSelected: false, category: 'Breakfast'),
      CategroyModel(isSelected: false, category: 'Golf'),
      CategroyModel(isSelected: false, category: 'Pollo'),
      CategroyModel(isSelected: false, category: 'Hiking'),
      CategroyModel(isSelected: false, category: 'Clubs'),
      CategroyModel(isSelected: false, category: 'Sports'),
      CategroyModel(isSelected: false, category: 'LGBT')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whitecolor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: whitecolor,
          elevation: 0.0,
          leading: const CrossIcon(),
          title: const Text("Edit your search",
              style: TextStyle(color: darkgrey, fontSize: 15)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                "images/filtered.svg",
                height: 20,
                color: darkgrey,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 238.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    boxShadow: [kDefaultShadow],
                    color: whitecolor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "images/search.svg",
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Buffalo, NY, United States",
                            style: black13regular,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => MyWidget());
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: darkgrey.withOpacity(0.1)),
                                        bottom: BorderSide(
                                            color: darkgrey.withOpacity(0.1)))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                      "images/calenderout.svg",
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Sep 8 - 10",
                                      style: black13regular,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const CounterSearchScreen());
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: darkgrey.withOpacity(0.1)),
                                        top: BorderSide(
                                            color: darkgrey.withOpacity(0.1)),
                                        bottom: BorderSide(
                                            color: darkgrey.withOpacity(0.1)))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                      "images/people.svg",
                                      height: 20.h,
                                    ),
                                    Text(
                                      "2 for guided",
                                      style: black13regular,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "images/addout.svg",
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Categories",
                                style: black14regular,
                              )
                            ],
                          ),
                          Text(
                            "Choose 3",
                            style: grey14regular,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Wrap(
                        alignment: WrapAlignment.center,
                        children: reportReasons!
                            .map((reportReason) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      reportReason.isSelected =
                                          !reportReason.isSelected;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: reportReason.isSelected
                                            ? themecolor
                                            : whitecolor,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(color: themecolor)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                0.027,
                                        vertical:
                                            MediaQuery.of(context).size.height *
                                                0.0045),
                                    child: Text(
                                      reportReason.category,
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          color: reportReason.isSelected
                                              ? whitecolor
                                              : themecolor),
                                    ),
                                  ),
                                ))
                            .toList()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
