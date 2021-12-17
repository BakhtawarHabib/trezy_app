import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/myplaces/myplaces.dart';

class PlacesWidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Get.to(() => const PlacesScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 217.h,
              width: 155.w,
              decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [kDefaultShadow],
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        boxShadow: [kDefaultShadow],
                        image: DecorationImage(
                            image: AssetImage(placesimgs[index]),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    placesnames[index],
                    style: black17regular,
                  ),
                  Container(
                    height: 80,
                    child: Stack(
                      children: <Widget>[
                        const Positioned(
                            top: 20,
                            left: 50,
                            height: 36,
                            width: 36,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/img3.png"),
                            )),
                        const Positioned(
                            top: 20,
                            left: 20,
                            height: 36,
                            width: 36,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/img1.png"),
                            )),
                        const Positioned(
                            top: 20,
                            left: 80,
                            height: 36,
                            width: 36,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/img2.png"),
                            )),
                        Positioned(
                            top: 20,
                            left: 110,
                            height: 36,
                            width: 36,
                            child: SvgPicture.asset("images/add.svg")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
