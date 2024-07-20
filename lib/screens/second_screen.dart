import 'package:c11_exam_friday/widgets/exercise_item.dart';
import 'package:c11_exam_friday/widgets/features_item.dart';
import 'package:c11_exam_friday/widgets/row_feeling_item.dart';
import 'package:c11_exam_friday/widgets/row_text_and_icon_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentIndex = 0;
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
  int selectedIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            selectedIndex = value;
            isSelected = true;
            setState(() {});
          },
          showSelectedLabels: isSelected ? true : false,
          showUnselectedLabels: isSelected ? false : true,
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Color(0xff667085),
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
        title: Row(children: [
          Image.asset(
            "assets/images/second_logo.png",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 12,
          ),
          const Text(
            "Moody",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Badge(
              smallSize: 8,
              alignment: Alignment.topRight,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.notifications_none,
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
            SizedBox(
              height: 12,
            ),
            CarouselSlider(
                items: const [
                  FeaturesItem(),
                  FeaturesItem(),
                  FeaturesItem(),
                ],
                options: CarouselOptions(
                    height: 180,
                    // autoPlay: true,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    })),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                onDotClicked: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                activeIndex: currentIndex,
                count: 3,
                effect: WormEffect(
                    spacing: 4,
                    activeDotColor: Color(0xff98A2B3),
                    dotWidth: 5,
                    dotHeight: 5,
                    dotColor: Color(0xffD9D9D9)),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const RowTextAndIconItem(
              labelOne: "Exercise",
              labelTwo: "see more",
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
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
            )
          ]),
        ),
      ),
    );
  }
}
