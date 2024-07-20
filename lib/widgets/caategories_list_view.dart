import 'package:c11_exam_friday/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  List<String> categories = ["Art", "Bussiness", "Comedy", "Drama"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
