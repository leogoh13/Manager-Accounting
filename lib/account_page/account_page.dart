import 'package:flutter/material.dart';
import 'package:improving_your_ui/account_page/transaction_list_header.dart';
import 'package:improving_your_ui/account_page/transactions_data.dart';
import 'package:improving_your_ui/account_page/transactions_list.dart';

enum moreSettings { saveAsPDF, saveAsExcel }

class AccountPage extends StatefulWidget {
  final String accountName;
  final double iconSize;
  final Color iconColor;
  final Color appBarColor;
  final List<TransactionData> transactionData;

  AccountPage({
    this.iconColor,
    @required this.accountName,
    this.appBarColor,
    this.iconSize,
    @required this.transactionData,
  });

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List<Widget> _transactionList = new List<Widget>();

  void getList(BuildContext context) {
    _transactionList.clear();
    _transactionList.add(TransactionListHeader(
      fontWeight: FontWeight.bold,
    ));
    _transactionList.add(Divider(
      thickness: 5,
      height: 1,
    ));
    for (int i = 0; i < 1; ++i) {
      var txnData = widget.transactionData[i];
      _transactionList.add(
        TransactionListContent(
          rowColor: (i % 2 == 0)
              ? Theme.of(context).primaryColorDark
              : Theme.of(context).primaryColorLight,
          dateTime: txnData.dateTime,
          transactionData: txnData.transactionName,
          creditAmount: txnData.creditAmount,
          debitAmount: txnData.debitAmount,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    getList(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.appBarColor,
        title: Text(widget.accountName),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.note_add,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
            onPressed: () {},
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<moreSettings>>[
              const PopupMenuItem(
                child: Text('Save as PDF'),
                value: moreSettings.saveAsPDF,
              ),
              const PopupMenuItem(
                child: Text('Save as Excel'),
                value: moreSettings.saveAsExcel,
              ),
            ],
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: _transactionList,
        ),
      ),
    );
  }
}
