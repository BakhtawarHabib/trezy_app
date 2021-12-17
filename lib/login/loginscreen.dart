import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/register/register.dart';
import 'package:trezy_app/traveller/bottomnavigatior/bottomnavigatior.dart';
import 'package:trezy_app/traveller/travellerhome.dart';
import 'package:trezy_app/traveller/travellerhome.dart';
import 'package:trezy_app/widgets/customtextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      const Color(0xff69ACDF).withOpacity(0.8),
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
                    Center(child: Image.asset("images/logo.png")),
                    Center(
                      child: Text(
                        "Select a city. Find Trezy advisor. \nPlan your trip",
                        textAlign: TextAlign.center,
                        style: white14normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextField(),
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
                                  child: SvgPicture.asset("images/eye.svg")),
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
                                  child: SvgPicture.asset("images/lock.svg"),
                                )),
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                              color: themecolor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Get.to(() => ForgotPasswordScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Text(
                          "Forgot Password?",
                          style: white14normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: white14normal,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const RegisterScreen());
                      },
                      child: const Text(
                        "create now",
                        style: TextStyle(color: Color(0xff00659A)),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.offAll(() => BottomNaviagtion());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: themecolor,
                        width: MediaQuery.of(context).size.width,
                        height: 76.h,
                        child: Text(
                          "Log in",
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
