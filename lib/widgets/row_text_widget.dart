import 'package:flutter/material.dart';

class RowTextWidge extends StatelessWidget {
  final String LabelOne;
  final String LabelTwo;
  const RowTextWidge(
      {super.key, required this.LabelOne, required this.LabelTwo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LabelOne,
              style: TextStyle(
                color: Color(0xff010104),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              LabelTwo,
              style: TextStyle(
                  color: Color(0xff4838D1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
