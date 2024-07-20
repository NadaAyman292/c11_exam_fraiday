import 'package:flutter/material.dart';

class FeaturesItem extends StatelessWidget {
  const FeaturesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffECFDF3),
          borderRadius: BorderRadius.circular(16)),
      child: Row(children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Positive vibes",
              style: TextStyle(
                color: Color(0xff344054),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Boost your mood with \n positive vibes"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff32D583),
                  child: Icon(
                    Icons.play_arrow,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "10 mins",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
        Image.asset("assets/images/walking_the_ dog.png")
      ]),
    );
  }
}
