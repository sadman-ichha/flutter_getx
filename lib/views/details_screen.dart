import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Name: ${box.read('data')['name']}"),
            ),
            Center(
              child: Text("Age: ${box.read('data')['age']}"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print(
          box.read('data')['name'],
        ),
      ),
    );
  }
}
