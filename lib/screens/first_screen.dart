import 'package:c11_exam_friday/widgets/best_seller_item.dart';
import 'package:c11_exam_friday/widgets/carousel_slider_item.dart';
import 'package:c11_exam_friday/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/list_view_item.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  List<String> categories = ["Art", "Bussiness", "Comedy", "Drama"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: Color(0xff4838D1),
        unselectedItemColor: Color(0xff6A6A8B),
        //  selectedLabelStyle: ,

        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              label: "Library",
              icon: Icon(
                Icons.library_books,
              )),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: 40,
        title: Row(children: [
          Image.asset("assets/images/logo_small.png"),
          const Text.rich(
            TextSpan(
                text: "Audi",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4838D1),
                ),
                children: [
                  TextSpan(
                    text: "Books",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4838D1),
                    ),
                  )
                ]),
          ),
        ]),
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
              SizedBox(
                height: 20,
              ),
              const RowTextWidge(
                LabelOne: "Categories",
                LabelTwo: "see more",
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 40,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 12,
                      );
                    },
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ListViewItem(
                        text: categories[index],
                      );
                    }),
              ),
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

              CarouselSliderItem(),
              SizedBox(
                height: 8,
              ),
              const RowTextWidge(LabelOne: "Best Saller", LabelTwo: "see more"),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 145,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 8,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return BestSellerItem();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
