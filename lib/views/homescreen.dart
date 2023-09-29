import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key, required String title});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E2434),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Constant.getLogo('mobile'),
            ),
            mainContent('mobile'),
            const SizedBox(
              height: 20,
            ),
            Constant.setRightContent('mobile')
          ],
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Widget mainContent(param) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.98,
//      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 240,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Constant.setTxtContent('mobile'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.bet2winn.in/uploads/apk/bet2winn.apk');
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Container(
                    width: 180,
                    height: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/btn1.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _makePhoneCall('+91-8100446616');
                  },
                  child: Container(
                    width: 180,
                    height: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/btn2.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Image.asset(
              'assets/images/rating.png',
              height: 80,
              width: 220,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
    //Constant.setRightContent('mobile'),
  }
}

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key, required String title});
  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E2434),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Constant.getLogo('desktop'),
            mainContent('desktop'),
          ],
        ),
      ),
    );
  }

  Widget mainContent(param) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.98,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Constant.setTxtContent('desktop'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runAlignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final Uri url = Uri.parse(
                              'https://www.bet2winn.in/uploads/apk/bet2winn.apk');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Container(
                          width: 180,
                          height: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/btn1.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 60,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/btn2.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                  ),
                  child: Image.asset(
                    'assets/images/rating.png',
                    height: 50,
                    width: 160,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Constant.setRightContent('desktop'),
          ],
        ));
  }
}
