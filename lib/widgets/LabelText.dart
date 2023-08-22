import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key , required this.labeltext});
  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return Text(
                labeltext,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              );
  }
}