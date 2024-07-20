// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FeelingItem extends StatelessWidget {
  String image;
  String text;
  FeelingItem({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffE4E7EC),
          child: Image.asset(
            image,
            height: 40,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        )
      ],
    );
  }
}
