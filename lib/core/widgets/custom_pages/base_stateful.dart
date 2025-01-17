import 'package:flutter/material.dart';

abstract class PasBaseStateful extends StatefulWidget {
  final String? title;

  const PasBaseStateful({Key? key, this.title}) : super(key: key);

  @override
  BaseState<PasBaseStateful> createState();
}

abstract class BaseState<T extends PasBaseStateful> extends State<T> {
  // Enforce child classes to define the body
  @protected
  Widget buildBody(BuildContext context);

  // Getter for AppBar
  @protected
  AppBar? get customAppBar =>
      widget.title != null ? AppBar(title: Text(widget.title!)) : null;

  // Getter for background color
  @protected
  Color get backgroundColor => Colors.white;

  // Getter for floatingActionButton
  @protected
  Widget? get floatingActionButton => null;

  // Getter for drawer
  @protected
  Widget? get drawer => null;

  // The public build method delegates to a private method
  @override
  Widget build(BuildContext context) {
    return _buildScaffold(context); // Delegate to private method
  }

  // Private method for encapsulating the build logic
  Widget _buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      backgroundColor: backgroundColor,
      drawer: drawer,
      body: SafeArea(child: buildBody(context)),
      floatingActionButton: floatingActionButton,
    );
  }
}
