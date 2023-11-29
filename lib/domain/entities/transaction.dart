import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    String? id,
    required String uid,
    required String title,
    String? transactionImage,
    int? transactionTime,
    @Default([]) List<String> seats,
    String? theaterName,
    int? watchingTime,
    int? ticketAmount,
    int? ticketPrice,
    required int adminFee,
    required int total,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
