import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("메인제목"),
          subtitle: Text("서브제목"),
          leading: Icon(Icons.person),
        );
      },
    );
  }
}
