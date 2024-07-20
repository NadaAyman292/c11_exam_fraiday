import 'package:c11_exam_friday/widgets/exercise_item.dart';
import 'package:flutter/material.dart';

class GridViewExercise extends StatelessWidget {
  GridViewExercise({super.key});
  List<String> text = ["relaxation", "meditation", "Beathing", "Yoga"];
  List<String> images = [
    "assets/images/relaxation.png",
    "assets/images/meditiation.png",
    "assets/images/beathing.png",
    "assets/images/yoga.png"
  ];
  List<Color> colors = [
    Color(0xffF9F5FF),
    Color(0xffFDF2FA),
    Color(0xffFFFAF5),
    Color(0xffF0F9FF)
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: GridView.builder(
          itemCount: text.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 3),
          itemBuilder: (context, index) {
            return ExerciseItem(
              label: text[index],
              image: images[index],
              color: colors[index],
            );
          }),
    );
  }
}
