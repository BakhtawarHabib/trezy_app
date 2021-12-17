import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/advisor/makeprofile.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/customtextfield.dart';

class AdvisorRegisterScreen extends StatefulWidget {
  const AdvisorRegisterScreen({Key? key}) : super(key: key);

  @override
  _AdvisorRegisterScreenState createState() => _AdvisorRegisterScreenState();
}

class _AdvisorRegisterScreenState extends State<AdvisorRegisterScreen> {
  bool _passwordVisible = false;
  @override

// ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      const Color(0xffA3A3E6).withOpacity(0.9),
                      BlendMode.darken),
                  image: const AssetImage("images/background.png"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Column(
                  children: [
                    Center(
                        child: Text(
                      "Became an advisor now!",
                      style: white19normal,
                    )),
                    Center(child: Image.asset("images/logo.png")),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 65.h,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(11)),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          style: const TextStyle(color: Color(0xff6A6A6A)),
                          cursorColor: const Color(0xFF075E54),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(bottom: 23.0),
                            prefixIcon: Container(
                              height: 65.h,
                              margin: const EdgeInsets.only(
                                  right: 9, top: 10, bottom: 10),
                              decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.white)),
                              ),
                              child: Icon(
                                Icons.email_outlined,
                                color: advthemecolor,
                                size: MediaQuery.of(context).size.width * 0.08,
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              color: advthemecolor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 65.h,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(11)),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextFormField(
                          obscureText: !_passwordVisible,
                          textAlignVertical: TextAlignVertical.bottom,
                          style: const TextStyle(color: Color(0xff6A6A6A)),
                          cursorColor: const Color(0xFF075E54),
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                    "images/eye.svg",
                                    color: advthemecolor,
                                  )),
                            ),
                            contentPadding: const EdgeInsets.only(bottom: 23.0),
                            prefixIcon: Container(
                                height: 65.h,
                                margin: const EdgeInsets.only(
                                    right: 9, top: 10, bottom: 10),
                                decoration: const BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Colors.white)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    "images/lock.svg",
                                    color: advthemecolor,
                                  ),
                                )),
                            border: InputBorder.none,
                            hintText: 'Create Password',
                            hintStyle: const TextStyle(
                              color: advthemecolor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 65.h,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(11)),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextFormField(
                          obscureText: !_passwordVisible,
                          textAlignVertical: TextAlignVertical.bottom,
                          style: const TextStyle(color: Color(0xff6A6A6A)),
                          cursorColor: const Color(0xFF075E54),
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                    "images/eye.svg",
                                    color: advthemecolor,
                                  )),
                            ),
                            contentPadding: const EdgeInsets.only(bottom: 23.0),
                            prefixIcon: Container(
                                height: 65.h,
                                margin: const EdgeInsets.only(
                                    right: 9, top: 10, bottom: 10),
                                decoration: const BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Colors.white)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    "images/lock.svg",
                                    color: advthemecolor,
                                  ),
                                )),
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(
                              color: advthemecolor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Became a Travelers",
                      style: TextStyle(color: Color(0xffE2DA1B)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Already have an account?",
                      style: white14normal,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(color: advthemecolor),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const MakeAdvisorProfile());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: advbtnscolor,
                        width: MediaQuery.of(context).size.width,
                        height: 76.h,
                        child: Text(
                          "Create now",
                          style: white14normal,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
