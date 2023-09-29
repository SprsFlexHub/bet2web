import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constant {
  static launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  static getLogo(param) {
    if (param == 'mobile') {
      return Image.asset(
        'assets/images/logo.png',
        height: 100,
        width: 180,
        fit: BoxFit.cover,
      );
    } else if (param == 'desktop') {
      return Image.asset(
        'assets/images/logo.png',
        height: 150,
        width: 150,
      );
    } else {
      return Image.asset(
        'assets/images/logo.png',
        height: 150,
        width: 150,
      );
    }
  }

  static setTxtContent(param) {
    if (param == 'mobile') {
      return Image.asset(
        'assets/images/setTxt.png',
        height: 120,
        width: 120,
        fit: BoxFit.contain,
      );
    } else if (param == 'desktop') {
      return Image.asset('assets/images/setTxt.png',
          height: 220, width: 460, fit: BoxFit.contain);
    } else {
      return Image.asset(
        'assets/images/setTxt.png',
        height: 150,
        width: 150,
      );
    }
  }

  static setRightContent(param) {
    if (param == 'mobile') {
      return SizedBox(
        height: 460,
        width: Get.width * .98,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 21,
              left: Get.width * .32,
              child: SizedBox(
                width: Get.width * .45,
                height: 460,
                child: Image.asset('assets/images/Rectangle21.png',
                    height: 460, width: Get.width * .45, fit: BoxFit.fill),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                width: Get.width * .75,
                height: 460,
                child: Image.asset('assets/images/Imageright.png',
                    height: 460, width: Get.width * .75, fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      );
    } else if (param == 'desktop') {
      return SizedBox(
        height: 749,
        width: 775,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 21,
              right: 282,
              child: Container(
                width: 300,
                height: 649,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle21.png'),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 775,
                height: 749,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/Imageright.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Image.asset(
        'assets/images/setTxt.png',
        height: 150,
        width: 150,
      );
    }
  }
}
