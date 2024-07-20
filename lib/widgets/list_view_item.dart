import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  String text;
  ListViewItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xff2E2E5D),
            fontSize: 16,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
