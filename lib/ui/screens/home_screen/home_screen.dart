import 'package:flutter/material.dart';
import 'package:task_app/ui/screens/home_screen/components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          children: [
            TodayBox(),
            HomeCategories(),
            HomeRecentSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: "Add a new category",
        backgroundColor: const Color(0xff6C63FF),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(Icons.add_rounded, size: 30),
      ),
    );
  }
}
