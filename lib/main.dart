import 'package:flutter/material.dart';

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
  int _selectedTabIndex = 0;
  int _selectedGroupIndex = 0;

  final List<String> groupTabs = ["Group A", "Group B", "Group C"];
  final List<List<String>> pageTabs = [
    ["Page 1", "Page 2", "Page 3"],
    ["Page 4", "Page 5", "Page 6"],
    ["Page 7", "Page 8", "Page 9"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webpage"),
      ),
      body: Column(
        children: [
          // Top bar with group tabs
          Container(
            color: Colors.white,
            height: 50,
            width: double.infinity, // Make the container extend the full width
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: groupTabs.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedGroupIndex = index;
                      _selectedTabIndex = 0;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(groupTabs[index]),
                  ),
                );
              },
            ),
          ),
          Divider(),
          Expanded(
            child: Row(
              children: [
                // Left sidebar with page tabs
                Container(
                  width: 200,
                  child: ListView.builder(
                    itemCount: pageTabs[_selectedGroupIndex].length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(pageTabs[_selectedGroupIndex][index]),
                        onTap: () {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                VerticalDivider(),
                // Main content
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}