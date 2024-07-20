import 'package:c11_exam_friday/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const BestSellerItem();
          }),
    );
  }
}
