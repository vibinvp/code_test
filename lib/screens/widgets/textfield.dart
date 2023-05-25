import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const Textfield({
    super.key,
    required this.icon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromRGBO(247, 247, 250, 1)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(icon),
            hintText: hintText),
      ),
    );
  }
}