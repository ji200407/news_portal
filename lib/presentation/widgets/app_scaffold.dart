// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  const AppScaffold({Key? key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar, body: SafeArea(child: child));
  }
}
