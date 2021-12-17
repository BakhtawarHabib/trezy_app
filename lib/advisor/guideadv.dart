import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class GuideAdvScreen extends StatefulWidget {
  const GuideAdvScreen({Key? key}) : super(key: key);

  @override
  _GuideAdvScreenState createState() => _GuideAdvScreenState();
}

class _GuideAdvScreenState extends State<GuideAdvScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.3,
          toolbarHeight: 60,
          backgroundColor: whitecolor,
          leading: const BackArow(),
          centerTitle: true,
          title: const Text("Guide",
              style: TextStyle(color: Colors.black, fontSize: 16)),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(child: SvgPicture.asset("images/uploadguide.svg")),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Upload your City Guide \npng, jpeg, pdf",
              textAlign: TextAlign.center,
              style: black14regular,
            ),
            SizedBox(
              height: 10.h,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const Text("Estimate a price"),
            SizedBox(
              height: 10.h,
            ),
            // Container(
            //   width: 100.w,
            //   height: 36.h,
            //   child: TextField(
            //     minLines: 1,
            //     maxLines: 5,
            //     keyboardType: TextInputType.phone,
            //     decoration: InputDecoration(
            //         fillColor: Colors.white,
            //         filled: true,
            //         hintText: "",
            //         prefixIcon: const Padding(
            //           padding: EdgeInsets.all(8.0),
            //           child: Text("\$"),
            //         ),
            //         hintStyle: hinttextstyle,
            //         focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //             borderSide: BorderSide(
            //               color: Colors.grey.withOpacity(0.5),
            //             )),
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //             borderSide: BorderSide(
            //               color: Colors.grey.withOpacity(0.5),
            //             )),
            //         border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //             borderSide: BorderSide(
            //               color: Colors.grey.withOpacity(0.5),
            //             ))),
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         blurRadius: 2,
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              width: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [kDefaultShadow],
              ),
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints(maxHeight: 280.0, minHeight: 36.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    reverse: true,
                    child: TextField(
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.phone,
                      maxLines: null,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "\$",
                              style: black16regular,
                            ),
                          ),
                          hintStyle: hinttextstyle,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5),
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5),
                              ))),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
