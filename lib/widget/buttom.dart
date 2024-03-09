import 'package:flutter/material.dart';

class ButtomCustom extends StatelessWidget {
  ButtomCustom({super.key, this.bgColors, this.text, this.textColors});
  Color? bgColors;
  Color? textColors;
  var text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: bgColors,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textColors,
        ),
      ),
    );
  }
}
