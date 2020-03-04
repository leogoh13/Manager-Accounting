import 'package:flutter/cupertino.dart';
import 'package:improving_your_ui/account_page/transaction_list_header.dart';

class TransactionListContent extends TransactionListHeader {
  final DateTime dateTime;
  final String transactionData;
  final double creditAmount;
  final double debitAmount;
  final Color rowColor;

  TransactionListContent({
    @required this.rowColor,
    @required this.dateTime,
    @required this.transactionData,
    @required this.creditAmount,
    @required this.debitAmount,
  }) : super(
          dateTimeHeader: dateTime.toString(),
          transactionDataHeader: transactionData,
          creditAmountHeader: creditAmount.toString(),
          debitAmountHeader: debitAmount.toString(),
          rowColor: rowColor,
        );
}
