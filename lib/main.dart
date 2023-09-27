import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
//  final LayoutController _layoutController = Get.put(LayoutController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Website',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.layout,
//      initialBinding: ControllerBinding(),
      getPages: Routes.getPages,
    );
  }
}
