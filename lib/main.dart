import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Tabs/create.dart' as create;
import 'Tabs/contribute.dart' as contribute;
import 'Tabs/button.dart' as button;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _initialization,
          builder: (context, snapshot){
            if (snapshot.hasError){
              print("Error");
            }
            if (snapshot.connectionState == ConnectionState.done){
              return HomePage();
            };
            return CircularProgressIndicator();
          },
      ),
    );
  }
}

class HomePage extends StatefulWidget {

  Color create_button_color = Colors.white;
  Color contribute_button_color = Colors.white;

  TabBar get _tabBar => TabBar(
    labelColor: Colors.black,
    tabs: [
      Tab(child: button.Button(
          text:"Create")),
      Tab(child: button.Button(
        text:"Contribute")),
    ],
  );
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Material(
              color: Colors.black, //<-- SEE HERE
              child: widget._tabBar,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              create.Create(),
              contribute.Contribute(),
            ],
          )
      ),
    );
  }
}