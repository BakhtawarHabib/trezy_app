import 'package:flutter/material.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:trezy_app/widgets/backarrow.dart';

class MyWidget extends StatefulWidget {
  createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  DateTime? selectedDate;
  @override
  initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        backgroundColor: whitecolor,
        leading: const CrossIcon(),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: whitecolor,
                  border: Border.all(color: greycolor),
                  borderRadius: BorderRadius.circular(30)),
              alignment: Alignment.center,
              height: 50,
              width: 200,
              child: const Text("Calender"),
            ),
            const SizedBox(height: 10.0),
            CalendarDatePicker(
              firstDate: DateTime(2020, 12, 12),
              lastDate: DateTime(20201, 12, 12),
              initialDate: selectedDate!,
              onDateChanged: (date) {
                setState(() {
                  selectedDate = date;
                });
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Clear",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 16),
              ),
              MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.blue,
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: whitecolor,
                    ),
                    Text(
                      "Search",
                      style: white14normal,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
