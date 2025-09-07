import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'ItemId': 'Item204',
                    'message': 'ข้อมูลผ่าน argument',
                  },
                );
                print('ได้ค่ากลับมาคือ: $result');
              },
              child: const Text('Go to Detail Screen'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,
                  arguments: {
                    'name': 'Poiter',
                    'message': 'ข้อมูลจาก Home to ThirdScreen',
                  },
                );
                print('ได้ค่ากลับมาคือ: $result');
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}