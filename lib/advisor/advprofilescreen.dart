import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';
import 'package:trezy_app/widgets/profileetxtfield.dart';

class ProfileAdvisorScreen extends StatefulWidget {
  const ProfileAdvisorScreen({Key? key}) : super(key: key);

  @override
  _ProfileAdvisorScreenState createState() => _ProfileAdvisorScreenState();
}

class _ProfileAdvisorScreenState extends State<ProfileAdvisorScreen> {
  TextEditingController _controller = TextEditingController();
  bool _isEnable = false;
  String title =
      "Mauris et tempus orci. Curabitur gravida nisi sed eros iaculis dignissim. Mauris elementum felis pharetra, pulvinar ante sed, interdum nisl.";
  bool isEditable = false;
  List categories = ["Bar", "Hiking", "Sports"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        elevation: 1.3,
        toolbarHeight: 60,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Save",
                style: TextStyle(
                  color: advbtnscolor,
                ),
              ),
            ),
          )
        ],
        backgroundColor: whitecolor,
        leading: const BackArow(),
        centerTitle: true,
        title: const Text("Profile",
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        image: AssetImage("images/girl.png"),
                        fit: BoxFit.cover),
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: whitecolor,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: theme14style,
                  ),
                  ProfileTextField(hinttext: "Betsy Ronald")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: theme14style,
                  ),
                  ProfileTextField(hinttext: "29 years old")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: theme14style,
                  ),
                  ProfileTextField(hinttext: "Miami - FL, USA")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categories"),
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.black.withOpacity(0.4),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Row(
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                color: advbtnscolor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              categories[index],
                              style: white14normal,
                            ),
                          ),
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Questions",
                style: black16regular,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tell us more about you….",
                      style: black14regular,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Expanded(
                          child: !isEditable
                              ? Text(
                                  title,
                                  style: theme14style,
                                )
                              : Container(
                                  child: TextFormField(
                                    style: black13regular,
                                    initialValue: title,
                                    textInputAction: TextInputAction.done,
                                    onFieldSubmitted: (value) {
                                      setState(() =>
                                          {isEditable = false, title = value});
                                    },
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        // hintText: hinttext,
                                        hintStyle: hinttextstyle,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ))),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                )),
                      IconButton(
                        icon: !isEditable
                            ? Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black.withOpacity(0.4),
                              )
                            : Text(""),
                        onPressed: () {
                          setState(() => {
                                isEditable = true,
                              });
                        },
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "What is your favorite way to spend a \nSaturday night?Tell us more about you….",
                      style: black14regular,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Expanded(
                          child: !isEditable
                              ? Text(
                                  title,
                                  style: theme14style,
                                )
                              : Container(
                                  child: TextFormField(
                                    style: black13regular,
                                    initialValue: title,
                                    textInputAction: TextInputAction.done,
                                    onFieldSubmitted: (value) {
                                      setState(() =>
                                          {isEditable = false, title = value});
                                    },
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        // hintText: hinttext,
                                        hintStyle: hinttextstyle,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ))),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                )),
                      IconButton(
                        icon: !isEditable
                            ? Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black.withOpacity(0.4),
                              )
                            : Text(""),
                        onPressed: () {
                          setState(() => {
                                isEditable = true,
                              });
                        },
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "When you travel, what are types of places \nyou check out?",
                      style: black14regular,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Expanded(
                          child: !isEditable
                              ? Text(
                                  title,
                                  style: theme14style,
                                )
                              : Container(
                                  child: TextFormField(
                                    style: black13regular,
                                    initialValue: title,
                                    textInputAction: TextInputAction.done,
                                    onFieldSubmitted: (value) {
                                      setState(() =>
                                          {isEditable = false, title = value});
                                    },
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        // hintText: hinttext,
                                        hintStyle: hinttextstyle,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ))),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                )),
                      IconButton(
                        icon: !isEditable
                            ? Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black.withOpacity(0.4),
                              )
                            : Text(""),
                        onPressed: () {
                          setState(() => {
                                isEditable = true,
                              });
                        },
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "What are NOT your specialties?",
                      style: black14regular,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Expanded(
                          child: !isEditable
                              ? Text(
                                  title,
                                  style: theme14style,
                                )
                              : Container(
                                  child: TextFormField(
                                    style: black13regular,
                                    initialValue: title,
                                    textInputAction: TextInputAction.done,
                                    onFieldSubmitted: (value) {
                                      setState(() =>
                                          {isEditable = false, title = value});
                                    },
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        // hintText: hinttext,
                                        hintStyle: hinttextstyle,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            )),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ))),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                )),
                      IconButton(
                        icon: !isEditable
                            ? Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black.withOpacity(0.4),
                              )
                            : Text(""),
                        onPressed: () {
                          setState(() => {
                                isEditable = true,
                              });
                        },
                      )
                    ]),
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
