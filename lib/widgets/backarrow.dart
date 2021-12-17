import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trezy_app/constants/colors.dart';

class BackArow extends StatelessWidget {
  const BackArow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}

class CrossIcon extends StatelessWidget {
  const CrossIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: const Icon(
        Icons.close,
        color: darkgrey,
        size: 20,
      ),
    );
  }
}
