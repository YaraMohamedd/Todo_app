import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_list_screen.dart';
import 'package:todo_app/widgets/app_bar.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Todos',
      theme: ThemeData(
          primaryColor: Color(0xFFFFD600),
          fontFamily: 'Manrope', hintColor: Colors.black26),
      home: new MyHomePage(title: 'Todos'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      Column(
        children: <Widget>[
          SimpleAppBar(widget.title),
          Expanded(child: TodoList()),
        ],
      ),
    );
  }
}
