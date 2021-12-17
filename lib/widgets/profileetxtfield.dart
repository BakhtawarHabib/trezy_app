import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';

class MakeProfileTextField extends StatelessWidget {
  String hinttext;
  String suffixicon;
  MakeProfileTextField({required this.hinttext, required this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: advbtnscolor)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: advbtnscolor)),
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: advbtnscolor)),
        hintText: hinttext,
        hintStyle: hinttextstyle,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(suffixicon),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  String hinttext;
  ProfileTextField({required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: TextFormField(
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: greycolor)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: greycolor)),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: greycolor)),
            hintText: hinttext,
            hintStyle: black17regular,
          ),
        ));
  }
}
