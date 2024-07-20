import 'package:c11_exam_friday/widgets/features_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWithDotIndicator extends StatefulWidget {
  const CarouselWithDotIndicator({super.key});

  @override
  State<CarouselWithDotIndicator> createState() =>
      _CarouselWithDotIndicatorState();
}

class _CarouselWithDotIndicatorState extends State<CarouselWithDotIndicator> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: const [
              FeaturesItem(),
              FeaturesItem(),
              FeaturesItem(),
            ],
            options: CarouselOptions(
                height: 180,
                autoPlay: true,
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
      ],
    );
  }
}
