import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';
import 'package:trezy_app/constants/colors.dart';

import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/profile/succesfullyscreen.dart';

import 'package:trezy_app/widgets/backarrow.dart';

class TellAboutTrip extends StatefulWidget {
  const TellAboutTrip({Key? key}) : super(key: key);

  @override
  _TellAboutTripState createState() => _TellAboutTripState();
}

class _TellAboutTripState extends State<TellAboutTrip> {
  var items = [
    'Romantic',
    'Romantic',
    'Romantic',
    'Romantic',
  ];
  DateTime? _selectedDate;
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _vibeEditingController = TextEditingController();
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
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            boxShadow: [kDefaultShadow],
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "Tell Betsy About Your Trip",
                                  style: black16regular,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Text(
                                    "Date of visit",
                                    style: black16regular,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: themecolor),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    width: 150.h,
                                    height: 36.h,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 6, vertical: 13),
                                          hintText: "MM / DD / YYYY",
                                          hintStyle: travellertheme14style,
                                          border: InputBorder.none),
                                      focusNode: AlwaysDisabledFocusNode(),
                                      controller: _textEditingController,
                                      onTap: () {
                                        _selectDate(context);
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Vibe",
                                      style: black16regular,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: themecolor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 233.w,
                                      height: 50.h,
                                      child: TextField(
                                        style: travellertheme14style,
                                        textAlign: TextAlign.center,
                                        readOnly: true,
                                        controller: _vibeEditingController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Romantic",
                                          hintStyle: travellertheme14style,
                                          suffixIcon: PopupMenuButton<String>(
                                            icon: const Icon(
                                              Icons.arrow_drop_down,
                                              color: themecolor,
                                            ),
                                            onSelected: (String value) {
                                              _vibeEditingController.text =
                                                  value;
                                            },
                                            itemBuilder:
                                                (BuildContext context) {
                                              return items
                                                  .map<PopupMenuItem<String>>(
                                                      (String value) {
                                                return PopupMenuItem(
                                                    child: Text(
                                                      value,
                                                      style:
                                                          travellertheme14style,
                                                    ),
                                                    value: value);
                                              }).toList();
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Reason for visit",
                                      style: black16regular,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: themecolor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: MediaQuery.of(context).size.width,
                                      // height: 50.h,
                                      child: TextField(
                                        maxLines: 4,
                                        style: travellertheme14style,
                                        textAlign: TextAlign.start,
                                        // controller: _vibeEditingController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          border: InputBorder.none,
                                          hintText: "Type here…",
                                          hintStyle: grey14regular,
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "What else would you like Betsy to know?",
                                      style: black16regular,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: themecolor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: MediaQuery.of(context).size.width,
                                      // height: 50.h,
                                      child: TextField(
                                        maxLines: 6,
                                        style: travellertheme14style,
                                        textAlign: TextAlign.start,
                                        // controller: _vibeEditingController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          border: InputBorder.none,
                                          hintText: "Type here…",
                                          hintStyle: grey14regular,
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 20),
                              child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                height: 50.h,
                                color: themecolor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                onPressed: () {
                                  Get.to(() => const SuccessfulySubmit());
                                },
                                child: Text(
                                  "Submit",
                                  style: white14normal,
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

  _selectDate(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate ?? DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: const ColorScheme.dark(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                surface: Colors.blueGrey,
                onSurface: Colors.yellow,
              ),
              dialogBackgroundColor: Colors.blue[500],
            ),
            child: child!,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate!)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
