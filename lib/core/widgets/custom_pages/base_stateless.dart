import 'package:flutter/material.dart';

abstract class BaseStateless extends StatelessWidget {
  final String? title; // AppBar title

  const BaseStateless({
    Key? key,
    this.title,
  }) : super(key: key);

  // Enforce child classes to define the body of the screen
  @protected
  Widget buildBody(BuildContext context);

  // Getter for background color
  @protected
  Color get backgroundColor => Colors.white; // Default background color

  // Getter for AppBar
  @protected
  AppBar? get customAppBar =>
      title != null ? AppBar(title: Text(title!)) : null;

  // Getter for floatingActionButton
  @protected
  Widget? get floatingActionButton => null;

  // Getter for drawer
  @protected
  Widget? get drawer => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      backgroundColor: backgroundColor, // Use getter for backgroundColor
      drawer: drawer,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: buildBody(context),
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
