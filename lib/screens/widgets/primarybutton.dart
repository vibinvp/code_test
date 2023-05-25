import 'package:flutter/material.dart';

class Primarybutton extends StatelessWidget {
  final Color colors1;
  final Color colors2;
  final String title;
  const Primarybutton({
    super.key,
    required this.title,
    required this.colors2,
    required this.colors1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55),
        gradient: LinearGradient(
          colors: [
            colors1,
            colors2

            // Color.fromRGBO(255, 192, 4, 1),
            // Color.fromRGBO(255, 116, 47, 1)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.2, 0.9],
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
