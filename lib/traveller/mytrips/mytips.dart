import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class MyTripsScreen extends StatefulWidget {
  const MyTripsScreen({Key? key}) : super(key: key);

  @override
  _MyTripsScreenState createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.3,
        toolbarHeight: 80,
        backgroundColor: whitecolor,
        leading: const BackArow(),
        centerTitle: true,
        title: const Text("My trips",
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ),
      body: Column(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 36,
                                backgroundImage: AssetImage(chatimages[index]),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                mytripsinfo[index],
                                style: black14extrabold,
                              )
                            ],
                          ),
                          Text(
                            mytripsdate[index],
                            style: grey13regular,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
