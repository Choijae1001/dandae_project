import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '가운데 버튼 예제',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('가운데 버튼'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 버튼을 눌렀을 때 동작
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('버튼이 눌렸습니다!')),
            );
          },
          child: Text('눌러보세요'),
        ),
      ),
    );
  }
}
