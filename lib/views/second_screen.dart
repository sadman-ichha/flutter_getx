import 'package:flutter/material.dart';
import 'package:flutter_getx/views/third_screen.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Second Screen")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Goto Home Screen")),
            TextButton(
                onPressed: () {
                  Get.snackbar("This is title", "This is Message",
                      barBlur: 20,
                      duration: Duration(seconds: 3),
                      snackStyle: SnackStyle.GROUNDED);
                },
                child: Text(
                  "Show SnackBar",
                  style: TextStyle(fontSize: 18.0),
                )),
            SizedBox(height: 5.0),
            TextButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Do you want to close",
                  middleText: "",
                  onConfirm: () => print("Okey"),
                  onCancel: () {},
                  confirm: Text("Yes", style: TextStyle(fontSize: 20.0)),
                  cancel: Text("No", style: TextStyle(fontSize: 20.0)),
                  radius: 20.0,
                );
              },
              child: Text('Show Dialog', style: TextStyle(fontSize: 18.0)),
            ),
            TextButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    height: 100.0,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "This is bottom Sheet",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ));
                },
                child: Text(
                  'Show Bottom Sheet',
                  style: TextStyle(fontSize: 17.0),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ThirdScreen()));
                },
                child: Text("Goto Third Screen")),
            SizedBox(height: 10.0),
            SizedBox(
              width: 100.0,
              height: 50.0,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purpleAccent)),
                onPressed: () => _counter + 1,
                child: Obx(() => Text(_counter.toString())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
