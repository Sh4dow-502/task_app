import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final int tasks;
  final String name;
  final double complete;
  const CategoryBox({
    super.key,
    required this.name,
    required this.tasks,
    required this.complete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 16),
      width: 180,
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFAFAFA),
      ),
      //alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$tasks Tasks",
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff9D9D9D),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          SizedBox(
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(20),
              backgroundColor: const Color(0xffD6D3FF),
              color: const Color(0xff6C63FF),
              value: complete,
              minHeight: 10,
            ),
          )
        ],
      ),
    );
  }
}
