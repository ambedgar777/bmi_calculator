import 'package:flutter/material.dart';
import 'input_page.dart';

class ReusableContainer extends StatelessWidget {
  final Widget cardChild;
  final Color colour;

  ReusableContainer({required this.cardChild, required this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
