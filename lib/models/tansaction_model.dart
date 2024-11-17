enum TransactionType { withdraw, inaccount }

class TransactionModel {
  final String title, date;
  final double price;
  final TransactionType type;

  TransactionModel({
    required this.title,
    required this.date,
    required this.price,
    required this.type,
  });
}
