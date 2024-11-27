import 'package:flutter/material.dart';

class DataAndSearch extends StatelessWidget {
  const DataAndSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Color(0xff535353),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffE3E1FF),
              ),
              width: 25,
              height: 25,
              child: const Center(
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Color(0xff6158FF),
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 35,
          ),
          padding: const EdgeInsets.all(0),
        ),
      ],
    );
  }
}
