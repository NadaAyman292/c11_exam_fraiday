import 'package:c11_exam_friday/widgets/carousel_with_dot_indicator.dart';
import 'package:c11_exam_friday/widgets/grid_view_exercise.dart';
import 'package:c11_exam_friday/widgets/row_feeling_item.dart';
import 'package:c11_exam_friday/widgets/row_text_and_icon_item.dart';
import 'package:c11_exam_friday/widgets/second_app_bar.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 15,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            selectedIndex = value;
            isSelected = true;
            setState(() {});
          },
          showSelectedLabels: isSelected ? true : false,
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Color(0xff667085),
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: ".",
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/home.png",
                  ),
                )),
            BottomNavigationBarItem(
                label: ".",
                icon: ImageIcon(AssetImage(
                  "assets/images/grid-01.png",
                ))),
            BottomNavigationBarItem(
                label: ".",
                icon: ImageIcon(AssetImage(
                  "assets/images/calendar.png",
                ))),
            BottomNavigationBarItem(
                label: ".",
                icon: ImageIcon(AssetImage(
                  "assets/images/user-03.png",
                ))),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const SecondAppBar(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Badge(
              smallSize: 8,
              alignment: Alignment.topRight,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.notifications_none_outlined,
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text.rich(
              TextSpan(
                  text: "Hello,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                        text: " Sara Rose",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600))
                  ]),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "How are you feeling today ?",
              style: TextStyle(
                  color: Color(0xff371B34),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 12,
            ),
            const RowFeelingItem(),
            const SizedBox(
              height: 18,
            ),
            const RowTextAndIconItem(
              labelOne: "Features",
              labelTwo: "see more",
            ),
            const SizedBox(
              height: 12,
            ),
            //
            const CarouselWithDotIndicator(),
            const SizedBox(
              height: 12,
            ),
            const RowTextAndIconItem(
              labelOne: "Exercise",
              labelTwo: "see more",
            ),
            const SizedBox(
              height: 8,
            ),
            GridViewExercise(),
          ]),
        ),
      ),
    );
  }
}
