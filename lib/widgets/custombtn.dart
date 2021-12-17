import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';

class AdvCustomBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  AdvCustomBtn(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: advbtnscolor,
            border: Border.all(color: advbtnscolor)),
        child: Text(
          txt,
          style: white18normal,
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}

// class CustomIconBtn extends StatelessWidget {
//   String txt;
//   VoidCallback onpress;
//   double height;
//   double width;
//   String icon;
//   CustomIconBtn(
//       {required this.txt,
//       required this.icon,
//       required this.onpress,
//       required this.height,
//       required this.width});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onpress,
//       child: Container(
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30), color: btnColor),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             SvgPicture.asset(icon),
//             Text(
//               txt,
//               style: white16stylemedium,
//             ),
//             Text(
//               "",
//               style: white16stylemedium,
//             ),
//           ],
//         ),
//         height: height.h,
//         width: width.w,
//       ),
//     );
//   }
// }
