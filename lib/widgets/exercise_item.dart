import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final String image;
  final String label;
  final Color color;
  const ExerciseItem(
      {super.key,
      required this.image,
      required this.label,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 55,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
