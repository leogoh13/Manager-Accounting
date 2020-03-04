import 'package:flutter/material.dart';

class TransactionData {
  TransactionData({
    @required this.debitAmount,
    @required this.creditAmount,
    @required this.transactionName,
    @required this.dateTime,
    @required this.index,
});

  int index;
  DateTime dateTime;
  String transactionName;
  double creditAmount;
  double debitAmount;
}