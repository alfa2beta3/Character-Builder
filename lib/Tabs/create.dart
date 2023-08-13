import 'package:flutter/material.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';
import 'button.dart' as button;

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return VerticalTabs(
      tabsWidth: 150,
      tabs: const <Tab>[
        Tab(child: button.Button(
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
                Text("Video Player"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
        // Upload Text Logic
                  },
                  child: Text("Upload Text"),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
        // Upload Picture Logic
                  },
                  child: Text("Upload Picture"),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
        // Download 3D Mesh Logic
                  },
                  child: Text("Download 3D Mesh"),
                ),
              ],
            ),
          ),
        ),
          Container(child: Text('Tutorial for Create'), padding: EdgeInsets.all(20)),
      ],
    );
  }
}
