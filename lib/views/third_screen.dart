import 'package:flutter/material.dart';
import 'package:flutter_getx/model/data.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => print(box.read("data")),
      //  ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  hintText: "age",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 48.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        final name = _nameController.text;
                        final age = _ageController.text;

                        box.write("data", MyData(name: name, age: age));

                        print("added");
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 20.0),
                      ))),
              TextButton(
                  onPressed: () {
                    Get.toNamed("/details-screen");
                  },
                  child: Text("Show Details"))
            ],
          ),
        ),
      ),
    );
  }
}
