import 'package:funtour/models/tour_models.dart';
import 'package:funtour/models/user_models.dart';

enum TransactionStatus { cancelled, done, pending }

class TransactionModels {
  final int? id;
  final TourModels tourModels;
  final int? quantity;
  final int? total;
  final DateTime? dateTime;
  final TransactionStatus? status;
  final UserModels? userModels;

  TransactionModels({
    this.id,
    required this.tourModels,
    this.quantity,
    this.total,
    this.dateTime,
    this.status,
    this.userModels,
  });
  TransactionModels copyWith({
    int? id,
    TourModels? tourModels,
    int? quantity,
    int? total,
    DateTime? dateTime,
    TransactionStatus? status,
    UserModels? userModels,
  }) {
    return TransactionModels(
      id: id ?? this.id,
      tourModels: tourModels ?? this.tourModels,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
      userModels: userModels ?? this.userModels,
    );
  }
}

List<TransactionModels> mockTransaction = [
  TransactionModels(
    id: 1,
    tourModels: mockTour[1],
    quantity: 3,
    total: (mockTour[1].price * 10 * 1.1).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.pending,
    userModels: mockUser,
  ),
  TransactionModels(
    id: 2,
    tourModels: mockTour[2],
    quantity: 2,
    total: (mockTour[2].price * 10 * 1.1).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.pending,
    userModels: mockUser,
  ),
  TransactionModels(
    id: 3,
    tourModels: mockTour[0],
    quantity: 5,
    total: (mockTour[3].price * 10 * 1.1).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.done,
    userModels: mockUser,
  ),
];
