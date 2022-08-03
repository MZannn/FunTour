import 'package:get/get.dart';

class DashboardController extends GetxController {
  int selectIndex = 0;
  void setIndex(int newIndex) {
    selectIndex = newIndex;
    update();
  }
}
