import 'dart:math';

import 'package:get/get.dart';

class TourDetailController extends GetxController {
  int quantity = 1;
  void minQuantity() {
    quantity = max(1, quantity - 1);
    update();
  }

  void addQuantity() {
    quantity = min(50, quantity + 1);
    update();
  }
}
