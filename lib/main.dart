import 'package:flutter/material.dart';
import 'screens/detail_screen.dart'; // Import หน้าจอรายละเอียด
import 'screens/third_screen.dart'; // Import หน้าจอที่สาม
import 'screens/home_screen.dart'; // Import หน้าจอหลัก

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => DetailScreen(),
        ThirdScreen.routeName: (context) => ThirdScreen(),
      },
    );
  }
}