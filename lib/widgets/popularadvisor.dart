import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';

class PopularAdvisorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 103.h,
            width: 101.w,
            decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [kDefaultShadow],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage(chatimages[index]),
                ),
                Text(
                  advisornames[index],
                  style: black13regular,
                ),
                Text(
                  advisoraddress[index],
                  style: black14regular,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
