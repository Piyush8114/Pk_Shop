import 'dart:ffi';

import 'package:flutter/material.dart';

class Contaner_Bottom_Model extends StatelessWidget {

  final Color? bgColor;
  final double? containerWidth;
  final String itext;

  const Contaner_Bottom_Model({super.key, this.bgColor, this.containerWidth, required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor
      ),
      child: Center(
        child: Text(
          itext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}