import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/app_pallete.dart';


class Dot extends StatelessWidget {

  final Color color;
  const Dot({
    required this.color,
    super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      width: 12,
      height: 12,

    );
  }
}
