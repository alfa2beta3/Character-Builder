import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
