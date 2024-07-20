import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            width: 200,
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/carousel_image.png"))),
          ),
          Container(
            width: 200,
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/carousel_image2.png",
                    ))),
          ),
        ],
        options: CarouselOptions(
          height: 300,
          autoPlay: false,
          viewportFraction: 0.7,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          //enlargeCenterPage: true,

          scrollDirection: Axis.horizontal,
        ));
  }
}
