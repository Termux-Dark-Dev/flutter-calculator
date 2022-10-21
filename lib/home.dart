import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calc.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Center(child: Calc()),
    );
  }
}
