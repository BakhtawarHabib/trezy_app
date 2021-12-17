import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class WalletAdvScreen extends StatefulWidget {
  const WalletAdvScreen({Key? key}) : super(key: key);

  @override
  _WalletAdvScreenState createState() => _WalletAdvScreenState();
}

class _WalletAdvScreenState extends State<WalletAdvScreen> {
  bool isEditable = false;
  String visatitile = "xxxx- xxxx-xxx- 8345";
  String venctitle = "05/27";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whitecolor,
        appBar: AppBar(
          elevation: 1.3,
          toolbarHeight: 60,
          backgroundColor: whitecolor,
          leading: const BackArow(),
          centerTitle: true,
          title: const Text("Wallet",
              style: TextStyle(color: Colors.black, fontSize: 16)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 53.h,
                  decoration: BoxDecoration(
                    color: whitecolor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kDefaultShadow],
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("images/visaicon.svg"),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                          width: 140,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (value) {
                              setState(() => {
                                    isEditable = false,
                                  });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "xxxx- xxxx-xxx- 8345",
                                hintStyle: hinttextstyle),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text("venc"),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                          width: 60,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (value) {
                              setState(() => {
                                    isEditable = false,
                                  });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "05/27",
                                hintStyle: hinttextstyle),
                          )),
                      Expanded(
                        child: IconButton(
                          icon: !isEditable
                              ? Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              : const Text(""),
                          onPressed: () {
                            setState(() => {
                                  isEditable = true,
                                });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$",
                    style: black17regular,
                  ),
                  Text(
                    "340.54",
                    style: black58regular,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Today",
                  style: grey13regular,
                ),
              ),
              Column(
                children: List.generate(
                  wallettilesicons.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: whitecolor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [kDefaultShadow],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(wallettilesicons[index]),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            wallettilesnames[index],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              wallettilesubtitle[index],
                              style: wallettextstyle[index],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Yesterday",
                  style: grey13regular,
                ),
              ),
              Column(
                children: List.generate(
                  wallettilesicons.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: whitecolor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [kDefaultShadow],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(wallettilesicons[index]),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            wallettilesnames[index],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              wallettilesubtitle[index],
                              style: wallettextstyle[index],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
