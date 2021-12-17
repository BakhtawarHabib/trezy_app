import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';

class SuccessfulySubmit extends StatefulWidget {
  const SuccessfulySubmit({Key? key}) : super(key: key);

  @override
  _SuccessfulySubmitState createState() => _SuccessfulySubmitState();
}

class _SuccessfulySubmitState extends State<SuccessfulySubmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        backgroundColor: whitecolor,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SvgPicture.asset("images/submit.svg"),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Submitted",
                  style: travellertheme28style,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: 50.h,
                color: themecolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: Text(
                  "DONE",
                  style: white14normal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
