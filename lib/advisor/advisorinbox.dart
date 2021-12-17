import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class AdvInboxScreen extends StatefulWidget {
  const AdvInboxScreen({Key? key}) : super(key: key);

  @override
  _AdvInboxScreenState createState() => _AdvInboxScreenState();
}

class _AdvInboxScreenState extends State<AdvInboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.3,
          toolbarHeight: 80,
          backgroundColor: whitecolor,
          leading: const BackArow(),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          centerTitle: true,
          title: const Text("Inbox",
              style: TextStyle(color: Colors.black, fontSize: 18)),
        ),
        body: Column(
          children: [
            Column(
                children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 35,
                          backgroundImage: AssetImage(chatimages[index]),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatnames[index],
                              style: black14extrabold,
                            ),
                            Text(
                              chatrecentmessages[index],
                              style: recentmessagestyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "11:30 pm",
                              style: black11normal,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(child: messagecounts[index]),
                            SizedBox(
                              width: 20.w,
                            ),
                            SvgPicture.asset(
                              "images/settings.svg",
                              height: 14,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
