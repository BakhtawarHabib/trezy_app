import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              margin: const EdgeInsets.only(right: 9, top: 10, bottom: 10),
              decoration: const BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white)),
              ),
              child: Icon(
                Icons.email_outlined,
                color: themecolor,
                size: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            border: InputBorder.none,
            hintText: 'Email',
            hintStyle: const TextStyle(
              color: themecolor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionTextField extends StatelessWidget {
  String question;
  String hinttext;
  QuestionTextField({required this.hinttext, required this.question});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(question),
          ),
          Container(
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hinttext,
                  hintStyle: hinttextstyle,
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
        ],
      ),
    );
  }
}
