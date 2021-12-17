import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';
import 'package:trezy_app/widgets/custombtn.dart';
import 'package:trezy_app/widgets/profileetxtfield.dart';

import 'advisordetails.dart';

class MakeAdvisorProfile extends StatefulWidget {
  const MakeAdvisorProfile({Key? key}) : super(key: key);

  @override
  _MakeAdvisorProfileState createState() => _MakeAdvisorProfileState();
}

class _MakeAdvisorProfileState extends State<MakeAdvisorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.3,
        toolbarHeight: 80,
        backgroundColor: whitecolor,
        leading: const BackArow(),
        centerTitle: true,
        title: const Text("Profile",
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
                          height: 50.h,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("images/profile.svg"),
                            const Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: whitecolor,
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              MakeProfileTextField(
                                hinttext: 'Your name…',
                                suffixicon: 'images/user.svg',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              MakeProfileTextField(
                                hinttext: 'Date of birth…',
                                suffixicon: 'images/cake.svg',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              MakeProfileTextField(
                                hinttext: 'Your city…',
                                suffixicon: 'images/location.svg',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AdvCustomBtn(
                  txt: "Next",
                  onpress: () {
                    Get.to(() => AdvisorDetails());
                  },
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
