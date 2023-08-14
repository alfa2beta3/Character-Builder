import 'package:flutter/material.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';
import 'button.dart' as button;

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
        Tab(child:button.Button(
          text:'Get Started',
          textColor: Colors.black,
          borderColor: Colors.black,
          textSize: 18,
        )),
        Tab(child: button.Button(
          text:'Tutorial',
          textColor: Colors.black,
          borderColor: Colors.black,
          textSize: 18,
        )),
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
        Container(child: Text('Tutorial'), padding: EdgeInsets.all(20)),
      ],
    );
  }
}
