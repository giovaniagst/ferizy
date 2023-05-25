import 'package:flutter/material.dart';

class WheelTile extends StatelessWidget {
  final String state;
  final Color selectedColor;
  const WheelTile(this.selectedColor, this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        state,
        style: TextStyle(color: selectedColor),
      )),
    );
  }
}
