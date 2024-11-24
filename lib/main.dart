import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'package:task_app/objectbox.g.dart';
import 'package:task_app/ui/screens/screens.dart';

//late Store store;
//void main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  store = await openStore();
//
//  runApp(
//    MultiProvider(
//      providers: const [],
//      child: const MyApp(),
//    ),
//  );
//}
//
//
//
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
