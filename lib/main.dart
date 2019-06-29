import 'package:flutter/material.dart';
import './basic_flutter_layout/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Codelab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Codelab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _entries = <String>["Basic Flutter layout", ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicLayout())
              )
            },
            child: Container(
              height: 50,
              color: Colors.white,
              child: Center(child: Text('Entry ${_entries[index]}')),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
