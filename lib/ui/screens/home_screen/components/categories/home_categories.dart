import 'package:flutter/material.dart';
import 'package:task_app/ui/screens/home_screen/components/categories/categories_scroll.dart';
import 'package:task_app/ui/screens/home_screen/components/categories/data_and_search.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: const Column(
        children: [
          DataAndSearch(),
          CategoriesScroll(),
        ],
      ),
    );
  }
}
