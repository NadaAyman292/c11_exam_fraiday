import 'package:flutter/material.dart';

class SecondAppBar extends StatelessWidget {
  const SecondAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        "assets/images/second_logo.png",
        height: 40,
        width: 40,
      ),
      const SizedBox(
        width: 12,
      ),
      const Text(
        "Moody",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    ]);
  }
}
