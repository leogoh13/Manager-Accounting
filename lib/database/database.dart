import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class TransactionsDatabase {
  final String path;

  TransactionsDatabase({
    @required this.path,
  });

  Future<String> getPath() async {
    return await getDatabasesPath();
  }
  Future<bool> isDBExist() async {
    return await databaseExists(path);
  }
  Future<void> deleteDB() async {
    await deleteDatabase(path);
  }
  Future<Database> openDB() async {
    return await openDatabase(path);
  }
}
