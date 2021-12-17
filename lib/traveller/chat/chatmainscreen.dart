import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/chat/reciverwidget.dart';
import 'package:trezy_app/traveller/chat/senderwidget.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class ChatPageView extends StatefulWidget {
  @override
  _ChatPageViewState createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];

  @override
  void initState() {
    super.initState();
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content:
            'I love walking around to explore the city, I am in and trying all the food they have to offer.',
        time: '9:57 PM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content:
            'I love walking around to explore the city, I am in and trying all the food they have to offer.My favorites places is Museum and Parks.\n\nAnythings about Sports places.',
        time: '22:40 PM',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: whitecolor),
          child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BackArow(),
                        Text(
                          "Betsy’s Chat",
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/girl.png"),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    height: 6,
                    color: whitecolor,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: whitecolor),
                      child: SingleChildScrollView(
                          controller: _scrollController,
                          reverse: true,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: childList,
                            ),
                          )),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 54.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type your message…",
                                  contentPadding: EdgeInsets.all(10),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      "images/settings.svg",
                                      color: themecolor,
                                    ),
                                  )),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: themecolor)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: themecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 54.h,
                        width: 55.w,
                        child: SvgPicture.asset(
                          "images/send.svg",
                          color: whitecolor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
