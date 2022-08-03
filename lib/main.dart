import 'package:flutter/material.dart';
import 'package:funtour/controller/dashboard_controller.dart';
import 'package:funtour/controller/order_controller.dart';
import 'package:funtour/controller/payment_controller.dart';
import 'package:funtour/controller/tour_detail_controller.dart';
import 'package:funtour/screens/screens.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DashboardController());
    Get.put(TourDetailController());
    Get.put(OrderController());
    Get.put(PaymentController());
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}