import 'package:flutter/material.dart';
import 'package:flutter_apps/customWidget/customAppbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var responsive_height = MediaQuery.of(context).size.height;
    var responsive_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Container(
              height: responsive_height / 20,
              color: Color(0xFFF68712),
              child: Center(
                child: Text("Task For Work",
                    style: TextStyle(
                        fontSize: responsive_width / 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            GridView.count(crossAxisCount: 3, shrinkWrap: true, children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(650)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_to_queue_outlined,
                          size: responsive_width / 7),
                      Text("Quize",
                          style: TextStyle(fontSize: responsive_width / 26))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(650)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_to_queue_outlined,
                          size: responsive_width / 7),
                      Text("Quize",
                          style: TextStyle(fontSize: responsive_width / 26))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(650)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_to_queue_outlined,
                          size: responsive_width / 7),
                      Text("Quize",
                          style: TextStyle(fontSize: responsive_width / 26))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(650)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_to_queue_outlined,
                          size: responsive_width / 7),
                      Text("Quize",
                          style: TextStyle(fontSize: responsive_width / 26))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(650)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_to_queue_outlined,
                          size: responsive_width / 7),
                      Text("Quize",
                          style: TextStyle(fontSize: responsive_width / 26))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(650)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_to_queue_outlined,
                          size: responsive_width / 7),
                      Text("Quize",
                          style: TextStyle(fontSize: responsive_width / 26))
                    ],
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
