import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomTextContainer(
  String text1,
  String text2, {
  Color textColor = Colors.black,
  Color boxColor = Colors.white,
  double? height,
  double? width,
}) {
  return Card(
    elevation: 10,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: boxColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            text1,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              text2,
              style: TextStyle(color: textColor, fontSize: 15),
            ),
          ),
        ],
      ),
    ),
  );
}
