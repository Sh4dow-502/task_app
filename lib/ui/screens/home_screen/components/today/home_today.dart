import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodayBox extends StatelessWidget {
  const TodayBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 130,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xff6C63FF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TodayData(),
          SvgPicture.asset(
            "assets/icons/calendar.svg",
            width: 80,
            height: 80,
          ),
        ],
      ),
    );
  }
}

class TodayData extends StatelessWidget {
  const TodayData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Today",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 23,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "1/10 Tasks",
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
