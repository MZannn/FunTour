import 'package:get/get.dart';

class OrderController extends GetxController {
  int selectedIndex = 0;
  void setIndex(int newIndex) {
    selectedIndex = newIndex;
    update();
  }
}
