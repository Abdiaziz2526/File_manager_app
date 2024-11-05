// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ApptextLarge extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  


  ApptextLarge({
    Key? key,
    this.size = 12,
    required this.text,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w300
      ),

    );
  }
}
