import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/advisor/advprofilescreen.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class SettingsAdv extends StatefulWidget {
  const SettingsAdv({Key? key}) : super(key: key);

  @override
  _SettingsAdvState createState() => _SettingsAdvState();
}

class _SettingsAdvState extends State<SettingsAdv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.3,
        toolbarHeight: 60,
        backgroundColor: whitecolor,
        leading: const BackArow(),
        centerTitle: true,
        title: const Text("Settings",
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: List.generate(
                5,
                (index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => settingsnavigation[index]));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  settingsnames[index],
                                  style: settingsstyle,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: advbtnscolor,
                                  size: 20,
                                )
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delete account",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xffE20000),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: SvgPicture.asset(
                    "images/delete.svg",
                    height: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
