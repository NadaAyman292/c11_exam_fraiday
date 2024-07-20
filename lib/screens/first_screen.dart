import 'package:c11_exam_friday/widgets/best_seller_list_view.dart';
import 'package:c11_exam_friday/widgets/caategories_list_view.dart';
import 'package:c11_exam_friday/widgets/carousel_slider_item.dart';
import 'package:c11_exam_friday/widgets/first_app_bar.dart';
import 'package:c11_exam_friday/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  int selectedIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: const Color(0xff4838D1),
        unselectedItemColor: const Color(0xff6A6A8B),
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: ImageIcon(
                AssetImage(
                  "assets/images/home_bottom_nav.png",
                ),
              )),
          BottomNavigationBarItem(
              label: "Search",
              icon: ImageIcon(
                AssetImage(
                  "assets/images/Search.png",
                ),
              )),
          BottomNavigationBarItem(
              label: "Library",
              icon: ImageIcon(
                AssetImage(
                  "assets/images/Document.png",
                ),
              )),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: 40,
        title: const AppBarWidet(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Color(0xff4838D1),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const RowTextWidge(
                LabelOne: "Categories",
                LabelTwo: "see more",
              ),
              const SizedBox(
                height: 12,
              ),
              CategoriesListView(),
              const SizedBox(
                height: 18,
              ),
              const RowTextWidge(
                LabelOne: "Recommended for you",
                LabelTwo: "see more",
              ),
              const SizedBox(
                height: 8,
              ),
              //carsoul
              const CarouselSliderItem(),
              const SizedBox(
                height: 8,
              ),
              const RowTextWidge(LabelOne: "Best Saller", LabelTwo: "see more"),
              const SizedBox(
                height: 8,
              ),
              BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
