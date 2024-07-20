import 'package:flutter/material.dart';

class RowTextAndIconItem extends StatelessWidget {
  final String labelOne;
  final String labelTwo;
  const RowTextAndIconItem(
      {super.key, required this.labelOne, required this.labelTwo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              labelOne,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const Spacer(),
            Text(
              labelTwo,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff027A48)),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff027A48),
              size: 12,
            )
          ],
        ),
      ],
    );
  }
}
