import 'package:bottom_app/ui/holder/first/first_page.dart';
import 'package:bottom_app/ui/holder/second/second_page.dart';
import 'package:bottom_app/ui/holder/third/third_page.dart';
import 'package:flutter/material.dart';

// 여기 화면에 여러 페이지를 둘 수 있겠구나!!
class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // 통신 코드 필요
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 아래처럼 하면 가운데로 맞춰짐
        showSelectedLabels: false,
        // 선택된 거 글자가 보임
        showUnselectedLabels: false,
        // backgroundColor: Colors.red,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.black,
        // 선택될 때 글자가 보임
        currentIndex: _index,
        // 선택된 아이콘에 색상
        items: [
          // 아이템 개수는 5개가 최대값
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "1"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "2"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "3"),
        ],
        onTap: (i) {
          print("클릭됨 ${i}");
          _index = i;
          setState(() {});
        },
      ),
    ); // 페이지니까
  }
}
