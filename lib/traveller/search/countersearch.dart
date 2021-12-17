import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/traveller/search/models/categoriesmode.dart';
import 'package:trezy_app/traveller/search/models/countermodel.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class CounterSearchScreen extends StatefulWidget {
  const CounterSearchScreen({Key? key}) : super(key: key);

  @override
  _CounterSearchScreenState createState() => _CounterSearchScreenState();
}

class _CounterSearchScreenState extends State<CounterSearchScreen> {
  List<CounterModel> itemData = [
    CounterModel(
      Counter: 1,
    ),
    CounterModel(
      Counter: 1,
    ),
    CounterModel(
      Counter: 1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whitecolor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: whitecolor,
          elevation: 0.0,
          leading: const CrossIcon(),
          title: const Text("Edit your search",
              style: TextStyle(color: darkgrey, fontSize: 15)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                "images/filtered.svg",
                height: 20,
                color: darkgrey,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              children: List.generate(
                  countertile.length,
                  (index) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    countertile[index],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    countersubtitle[index],
                                    style: grey14regular,
                                  )
                                ],
                              ),
                              Row(children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        itemData[index].Counter--;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      color: greycolor,
                                    )),
                                Text('${itemData[index].Counter}'),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        itemData[index].Counter++;
                                      });
                                    },
                                    icon: Icon(Icons.add_circle_outline)),
                              ])
                            ],
                          ),
                          Divider()
                        ],
                      ))),
        ),
      ),
    );
  }
}
