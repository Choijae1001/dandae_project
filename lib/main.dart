import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: '화면 하단 버튼 예시',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: MyHomePage(),
);
}
}

class MyHomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFF333333), // 연한 검은색 배경 (어두운 회색)
appBar: AppBar(
backgroundColor: Color(0xFF333333), // AppBar 배경색도 연한 검은색
),
body: Column(
mainAxisAlignment: MainAxisAlignment.end, // 화면 하단에 배치
children: <Widget>[
// 수평으로 배치된 버튼들
Row(
mainAxisAlignment: MainAxisAlignment.center, // 버튼들을 중앙에 배치
children: <Widget>[
Expanded(
child: ElevatedButton(
onPressed: () {
// '시간표' 버튼 클릭 시 TimeTablePage로 이동
Navigator.push(
context,
MaterialPageRoute(builder: (context) => TimeTablePage()),
);
},
child: Text(
'시간표',
style: TextStyle(color: Colors.white), // 글자 색을 하얀색으로 설정
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey, // 버튼 배경색을 회색으로 설정
minimumSize: Size(double.infinity, 80),  // 버튼 높이를 80으로 설정
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,  // 직각 모서리
),
),
),
),
SizedBox(width: 10),  // 버튼 간의 간격
Expanded(
child: ElevatedButton(
onPressed: () {
print('타이머 버튼 클릭');
Navigator.push(
context,
MaterialPageRoute(builder: (context) => TimerPage()),
);
},
child: Text(
'타이머',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(double.infinity, 80),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
SizedBox(width: 10),
Expanded(
child: ElevatedButton(
onPressed: () {
print('⌂ 버튼 클릭');
Navigator.push(
context,
MaterialPageRoute(builder: (context) => HomePage()),
);
},
child: Text(
'⌂',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(double.infinity, 80),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
SizedBox(width: 10),
Expanded(
child: ElevatedButton(
onPressed: () {
print('예상 문제 버튼 클릭');
Navigator.push(
context,
MaterialPageRoute(builder: (context) => ExpectedProblemPage()),
);
},
child: Text(
'예상 문제',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(double.infinity, 80),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
SizedBox(width: 10),
Expanded(
child: ElevatedButton(
onPressed: () {
print('노트 버튼 클릭');
Navigator.push(
context,
MaterialPageRoute(builder: (context) => NotesPage()),
);
},
child: Text(
'노트',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(double.infinity, 80),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
],
),
SizedBox(height: 20),
],
),
);
}
}

// '시간표' 버튼 클릭 시 이동하는 화면
class TimeTablePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFF333333),
appBar: AppBar(
title: Text('시간표 화면'),
backgroundColor: Color(0xFF333333),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// '뒤로가기' 버튼 클릭 시 원래 화면으로 돌아가기
Navigator.pop(context);
},
child: Text(
'원래 화면으로 돌아가기',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(200, 50),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
);
}
}

// '타이머' 버튼 클릭 시 이동하는 화면
class TimerPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFF333333),
appBar: AppBar(
title: Text('타이머 화면'),
backgroundColor: Color(0xFF333333),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// '뒤로가기' 버튼 클릭 시 원래 화면으로 돌아가기
Navigator.pop(context);
},
child: Text(
'원래 화면으로 돌아가기',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(200, 50),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
);
}
}

// '홈' 버튼 클릭 시 이동하는 화면
class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFF333333),
appBar: AppBar(
title: Text('홈 화면'),
backgroundColor: Color(0xFF333333),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// '뒤로가기' 버튼 클릭 시 원래 화면으로 돌아가기
Navigator.pop(context);
},
child: Text(
'원래 화면으로 돌아가기',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(200, 50),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
);
}
}

// '예상 문제' 버튼 클릭 시 이동하는 화면
class ExpectedProblemPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFF333333),
appBar: AppBar(
title: Text('예상 문제 화면'),
backgroundColor: Color(0xFF333333),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// '뒤로가기' 버튼 클릭 시 원래 화면으로 돌아가기
Navigator.pop(context);
},
child: Text(
'원래 화면으로 돌아가기',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(200, 50),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
);
}
}

// '노트' 버튼 클릭 시 이동하는 화면
class NotesPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFF333333),
appBar: AppBar(
title: Text('노트 화면'),
backgroundColor: Color(0xFF333333),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// '뒤로가기' 버튼 클릭 시 원래 화면으로 돌아가기
Navigator.pop(context);
},
child: Text(
'원래 화면으로 돌아가기',
style: TextStyle(color: Colors.white),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
minimumSize: Size(200, 50),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.zero,
),
),
),
),
);
}
}