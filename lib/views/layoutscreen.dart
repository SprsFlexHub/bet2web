import 'package:bet2web/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/responsive.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key, required String title});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final LayoutController _layoutController = Get.put(LayoutController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _layoutController.isMobile.value
          ? const MobileScreen(
              title: '',
            )
          : const DesktopScreen(
              title: '',
            ),
    );
  }
}
