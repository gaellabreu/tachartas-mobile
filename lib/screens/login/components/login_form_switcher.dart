import 'package:flutter/material.dart';

class LoginFormSwitcher extends StatefulWidget {
  final Widget widget;

  const LoginFormSwitcher({Key key, this.widget}) : super(key: key);

  @override
  _LoginFormSwitcherState createState() => _LoginFormSwitcherState();
}

class _LoginFormSwitcherState extends State<LoginFormSwitcher>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeIn,
      duration: Duration(milliseconds: 500),
      child: widget.widget,
    );
  }
}
