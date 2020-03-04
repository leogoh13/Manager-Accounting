import 'package:flutter/material.dart';
import 'package:improving_your_ui/account_page/account_page.dart';
import 'package:improving_your_ui/account_page/transactions_data.dart';
import 'package:improving_your_ui/common_files/custom_card.dart';
import 'package:improving_your_ui/dashboard/edit_dialog.dart';

class DashboardAccountCard extends CustomCard {
  final BuildContext context;
  final String accountName;
  final Color cardColor;
  final double cardElevation;
  final double borderRadius;
  final double iconSize;

  DashboardAccountCard({
    @required this.context,
    this.borderRadius: 4.0,
    this.cardColor: Colors.white,
    this.cardElevation: 5.0,
    this.iconSize: 25.0,
    @required this.accountName,
  }) : super(
          borderRadius: borderRadius,
          cardColor: cardColor,
          cardElevation: cardElevation,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                      child: Text(
                        accountName,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            splashColor: Colors.blue,
                            icon: Icon(
                              Icons.edit,
                              size: iconSize,
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    EditDialog(context: context),
                              );
                            },
                          ),
                          IconButton(
                            splashColor: Colors.red,
                            icon: Icon(
                              Icons.delete,
                              size: iconSize,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 3.0, height: 5.0),
              InkWell(
                splashColor: Colors.purple,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AccountPage(
                        accountName: accountName,
                        transactionData: <TransactionData>[
                          TransactionData(
                              dateTime: DateTime.now(),
                              creditAmount: 0,
                              debitAmount: 0,
                              transactionName: 'test',
                              index: 0),
                          TransactionData(
                              dateTime: DateTime.now(),
                              creditAmount: 0,
                              debitAmount: 0,
                              transactionName: 'test',
                              index: 0),
                          TransactionData(
                              dateTime: DateTime.now(),
                              creditAmount: 0,
                              debitAmount: 0,
                              transactionName: 'test',
                              index: 0),
                        ],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      AmountContainer(
                        amount: 1.00,
                        containerColor: Colors.green[400],
                        fontColor: Colors.black87,
                        title: 'Credit (+)',
                      ),
                      AmountContainer(
                        amount: 0.0,
                        containerColor: Colors.red[400],
                        fontColor: Colors.black87,
                        title: 'Debit (-)',
                      ),
                      AmountContainer(
                        amount: 0.0,
                        containerColor: Colors.blue[400],
                        fontColor: Colors.black87,
                        title: 'Balance',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
}

class AmountContainer extends StatelessWidget {
  final String title;
  final double amount;
  final Color containerColor;
  final Color fontColor;

  AmountContainer({
    @required this.amount,
    @required this.containerColor,
    @required this.fontColor,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 125,
      child: Card(
        color: containerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'RM $amount',
              style: TextStyle(
                fontSize: 20.0,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
