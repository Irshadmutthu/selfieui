import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funds/ui/goto.dart';

void main(List<String> args) {
  runApp(FundApp());
}

class FundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FundApp",
        theme: ThemeData(backgroundColor: Colors.white),
        home: GoTo());
  }
}
