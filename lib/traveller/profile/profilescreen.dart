import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';
import 'package:trezy_app/widgets/profileetxtfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        appBar: AppBar(
          elevation: 1.3,
          toolbarHeight: 60,
          backgroundColor: whitecolor,
          leading: const BackArow(),
          centerTitle: true,
          title: const Text("Profile",
              style: TextStyle(color: Colors.black, fontSize: 16)),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/traveller.png"),
                      fit: BoxFit.cover),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  color: whitecolor,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: grey14regular,
                ),
                ProfileTextField(hinttext: "Betsy Ronald")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Age",
                  style: grey14regular,
                ),
                ProfileTextField(hinttext: "29 years old")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: grey14regular,
                ),
                ProfileTextField(hinttext: "elisasmith@gmail.com")
              ],
            ),
          ),
        ])));
  }
}
