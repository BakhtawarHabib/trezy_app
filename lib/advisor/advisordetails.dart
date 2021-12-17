import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';
import 'package:trezy_app/widgets/custombtn.dart';
import 'package:trezy_app/widgets/customtextfield.dart';
import 'package:trezy_app/widgets/profileetxtfield.dart';

import 'advisorhome.dart';
import 'horizantaldivider.dart';

class AdvisorDetails extends StatefulWidget {
  const AdvisorDetails({Key? key}) : super(key: key);

  @override
  _AdvisorDetailsState createState() => _AdvisorDetailsState();
}

class _AdvisorDetailsState extends State<AdvisorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.3,
        toolbarHeight: 60,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: InkWell(
              onTap: () {
                Get.to(() => AdvisorHomeScreen());
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    color: advbtnscolor, decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
        backgroundColor: whitecolor,
        leading: const BackArow(),
        centerTitle: true,
        title: const Text("Advisor details",
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: -120,
            left: 120,
            child: Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset("images/spot.svg")),
          ),
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "Select your categories…",
                                  hintStyle: hinttextstyle,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ))),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [kDefaultShadow],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            HorizntalDivider(),
                            Text(
                              "Your Profile",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            HorizntalDivider(),
                          ],
                        ),
                        QuestionTextField(
                            hinttext:
                                "Type a description to go to your advisor profile… ",
                            question: "Tell us more about you…."),
                        QuestionTextField(
                            hinttext: "Type here your answer…",
                            question:
                                "What is your favorite way to spend a \nSaturday night?"),
                        QuestionTextField(
                            hinttext: "Type here your answer…",
                            question:
                                "When you travel, what are types of places \nyou check out?"),
                        QuestionTextField(
                            hinttext: "Type here your answer…",
                            question: "What are NOT your specialties?")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AdvCustomBtn(
                  txt: "Next",
                  onpress: () {},
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
