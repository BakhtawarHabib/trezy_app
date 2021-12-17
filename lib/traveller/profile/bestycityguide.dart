import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class BestyCityGuide extends StatefulWidget {
  const BestyCityGuide({Key? key}) : super(key: key);

  @override
  _BestyCityGuideState createState() => _BestyCityGuideState();
}

class _BestyCityGuideState extends State<BestyCityGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        backgroundColor: whitecolor,
        elevation: 0.0,
        leading: const CrossIcon(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            left: 120,
            child: Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  "images/spot.svg",
                  color: themecolor,
                )),
          ),
          Positioned(
            bottom: -20,
            left: -350,
            child: Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  "images/spot.svg",
                  color: themecolor,
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        maxRadius: 70,
                        backgroundImage: AssetImage("images/betsy.png"),
                      ),
                      Text(
                        "Betsy’s City Guide",
                        style: travellertheme28style,
                      ),
                      Text(
                        "Includes:",
                        style: black17regular,
                      ),
                      Column(
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: 280,
                                    alignment: Alignment.center,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: themecolor),
                                          height: 10,
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          betsycityguide[index],
                                          style: black17regular,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 50.h,
                    color: themecolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Text(
                      "BUY NOW",
                      style: white14normal,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
