DefaultTabController(
length: 2,
child: Expanded(
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
);