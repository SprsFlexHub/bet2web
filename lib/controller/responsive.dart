import 'package:get/get.dart';

class LayoutController extends GetxController {
  final isMobile = false.obs;

  @override
  void onInit() {
    super.onInit();
    _detectDeviceType();
  }

  void _detectDeviceType() {
    final screenWidth = Get.width;
    if (screenWidth < 600) {
      isMobile.value = true;
    } else {
      isMobile.value = false;
    }
  }
}
