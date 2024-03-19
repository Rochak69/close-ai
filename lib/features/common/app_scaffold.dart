import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    super.key,
    this.appBar,
    this.backgroundColor,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.resizeToAvoidBottomInset = true,
  });
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget body;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: appBar,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
