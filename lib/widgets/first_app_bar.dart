import 'package:flutter/material.dart';

class AppBarWidet extends StatelessWidget {
  const AppBarWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/images/logo_small.png"),
      const Text.rich(
        TextSpan(
            text: "Audi",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xff4838D1),
            ),
            children: [
              TextSpan(
                text: "Books",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4838D1),
                ),
              )
            ]),
      ),
    ]);
  }
}
