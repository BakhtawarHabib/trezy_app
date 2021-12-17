import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 17, top: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  const Color(0xff69ACDF).withOpacity(0.5), BlendMode.darken),
              image: const AssetImage("images/background.png"),
              fit: BoxFit.cover)),
      height: 300.h,
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            // width: MediaQuery.of(context).size.width - 70,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: SvgPicture.asset("images/drawer.svg")),
                  const CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: AssetImage("images/girl.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/smallsize.png",
                ),
                Text(
                  "Select a city. Find Trezy advisor. Plan your trip",
                  style: white14normal,
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
// Container(
//                   height: 65.h,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: themecolor),
//                       borderRadius: BorderRadius.circular(11)),
//                   width: MediaQuery.of(context).size.width,
//                   padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   child: TextFormField(
//                     textAlignVertical: TextAlignVertical.bottom,
//                     style: const TextStyle(color: Color(0xff6A6A6A)),
//                     cursorColor: const Color(0xFF075E54),
//                     decoration: InputDecoration(
//                       contentPadding: const EdgeInsets.only(bottom: 23.0),
//                       prefixIcon: Container(
//                         height: 65.h,
//                         margin: const EdgeInsets.only(
//                             right: 9, top: 10, bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border(
//                               right: BorderSide(
//                                   color: Colors.black.withOpacity(0.2))),
//                         ),
//                         child: const Icon(
//                           Icons.search,
//                           color: themecolor,
//                           size: 30,
//                         ),
//                       ),
//                       border: InputBorder.none,
//                       hintText: 'Search',
//                       hintStyle: const TextStyle(
//                         color: themecolor,
//                         fontSize: 14,
//                       ),
//                     ),
//                   ),
//                 )
