import 'package:flutter/material.dart';

class CounterTasks extends StatelessWidget {
  const CounterTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //Text(
        //  "Tasks",
        //  style: TextStyle(
        //    fontSize: 18,
        //    fontWeight: FontWeight.w400,
        //  ),
        //),
        SizedBox(width: 7),
        Text(
          "0",
          style: TextStyle(
            color: Color(0xff6158FF),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "/10",
          style: TextStyle(
            //color: Color(0xff6158FF),
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
