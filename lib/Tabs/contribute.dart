import 'package:flutter/material.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

class Contribute extends StatefulWidget {
  const Contribute({Key? key}) : super(key: key);

  @override
  State<Contribute> createState() => _ContributeState();
}

class _ContributeState extends State<Contribute> {
  @override
  Widget build(BuildContext context) {
    return VerticalTabs(
      tabsWidth: 150,
      tabs: <Tab>[
        Tab(child: Text('Get Started')),
        Tab(child: Text('Tutorial')),
      ],
      contents: <Widget>[
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Picture"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Upload Picture Logic
                  },
                  child: Text("Upload Picture"),
                ),
              ],
            ),
          ),
        ),
        Container(child: Text('Dart'), padding: EdgeInsets.all(20)),
      ],
    );
  }
}
