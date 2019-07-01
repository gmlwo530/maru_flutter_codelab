import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget{
  final List<Widget> _boxes = [BlueBox(),BlueBox(),BlueBox()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisSize Max", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisSize: MainAxisSize.max, // 이 값이 default
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisSize Min", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisAlignment start", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisAlignment end", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisAlignment center", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisAlignment space Around", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisAlignment space Between", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: _boxes
                          ),
                        ],
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text("MainAxisAlignment space Evenly", style: TextStyle(color: Colors.grey)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: _boxes
                          ),
                        ],
                      )
                  ),
                ]
            ),
          )
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