import 'package:c11_exam_friday/widgets/feeling_item.dart';
import 'package:flutter/material.dart';

class RowFeelingItem extends StatelessWidget {
  const RowFeelingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeelingItem(
          image: "assets/images/love.png",
          text: "Love",
        ),
        FeelingItem(
          image: "assets/images/cool.png",
          text: "Cool",
        ),
        FeelingItem(
          image: "assets/images/happy.png",
          text: "Happy",
        ),
        FeelingItem(
          image: "assets/images/sad.png",
          text: "Sad",
        ),
      ],
    );
  }
}
