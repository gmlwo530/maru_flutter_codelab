import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Basic Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basic Layout'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false), // pop의 두번째 인자는 dialog 또는 popup menu의 결과 값을 반환 해줄 떄 사용한다고 한다
          )
        ),
        body: Row(
          children: [
            BlueBox(),
            BlueBox(),
            BlueBox(),
          ],
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}