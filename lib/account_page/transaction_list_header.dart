import 'package:flutter/material.dart';

class TransactionListHeader extends StatelessWidget {
  TransactionListHeader({
    this.debitAmountHeader: 'Debit (RM)',
    this.creditAmountHeader: 'Credit (RM)',
    this.transactionDataHeader: 'Transaction Data',
    this.dateTimeHeader: 'Date',
    this.rowColor: Colors.blue,
    this.fontWeight,
  });
  final Color rowColor;
  final String dateTimeHeader;
  final String transactionDataHeader;
  final String creditAmountHeader;
  final String debitAmountHeader;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: rowColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                dateTimeHeader,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      (fontWeight == null) ? FontWeight.normal : FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                transactionDataHeader,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      (fontWeight == null) ? FontWeight.normal : FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                creditAmountHeader,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      (fontWeight == null) ? FontWeight.normal : FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                debitAmountHeader,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      (fontWeight == null) ? FontWeight.normal : FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
