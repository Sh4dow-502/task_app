import 'package:flutter/material.dart';
import 'package:task_app/ui/screens/home_screen/widgets/category_box.dart';

class CategoriesScroll extends StatelessWidget {
  const CategoriesScroll({super.key});

  @override
  Widget build(BuildContext context) {
    //List<CategoryModel> categories = List.generate(
    //50, (_) => CategoryModel(name: "Design", tasks: 10, complete: 50));
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryBox(
            name: "Design",
            tasks: 10,
            complete: 0.7,
          ),
          CategoryBox(
            name: "Design",
            tasks: 10,
            complete: 0.5,
          ),
          CategoryBox(
            name: "Design",
            tasks: 10,
            complete: 0.5,
          ),
          CategoryBox(
            name: "Design",
            tasks: 10,
            complete: 0.5,
          ),
          CategoryBox(
            name: "Design",
            tasks: 10,
            complete: 0.5,
          ),
          CategoryBox(
            name: "Design",
            tasks: 10,
            complete: 0.5,
          ),
        ],
      ),
    );
  }
}
