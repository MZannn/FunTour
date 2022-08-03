import 'package:funtour/models/transaction_models.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  int id = 0;
  int idIncrement() {
    var getId = mockTransaction.map((e) => e.id);
    id = getId.length;
    id++;
    return id;
  }
}
