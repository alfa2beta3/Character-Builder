import 'package:flutter/material.dart';
import 'Tabs/create.dart' as create;
import 'Tabs/contribute.dart' as contribute;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Create")),
                Tab(child: Text("Contribute")),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              create.Create(),
              contribute.Contribute(),
            ],
          )
      ),
    );
  }
}