import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/recipe_body.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: RecipeBody(),
    );
  }

  // Widget _bottom() {
  //   return Align(
  //         alignment: Alignment.centerRight,
  //         child: Container(
  //           color: Colors.red,
  //           width: 50,
  //           height: 50,
  //       )
  //       );
  // }
  //
  // Widget _center() {
  //   return Row( // 박스 감쌀 필요 없음
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Container(
  //         color: Colors.red,
  //         width: 50,
  //         height: 50
  //       ),
  //       Container(
  //         color: Colors.green,
  //         width: 50,
  //         height: 50,
  //       ),
  //       Container(
  //         color: Colors.yellow,
  //         width: 50,
  //         height: 50,
  //       )
  //     ],
  //   );
  // }
  //
  // Widget _top() {
  //   return SizedBox(
  //     width: double.infinity,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               color: Colors.red,
  //               width: 50,
  //               height: 50,
  //             ),
  //             Container(
  //               color: Colors.green,
  //               width: 50,
  //               height: 50,
  //             ),
  //             Container(
  //               color: Colors.yellow,
  //               width: 50,
  //               height: 50,
  //             )
  //           ],
  //         ),
  //   );
  // }

  AppBar _appbar() {
    return AppBar(
      actions: [
        Icon(CupertinoIcons.search), // 키 값이 없어서 시그니쳐 매개변수
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
