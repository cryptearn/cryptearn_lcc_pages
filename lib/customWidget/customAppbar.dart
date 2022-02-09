import 'package:flutter/material.dart';
import 'dart:ui';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key, key})
      : preferredSize = Size.fromHeight(95.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isAnimation = false;
  bool _isBallanceShown = false;
  bool _isBallance = true;
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xFFF68712),
      child: Column(
        children: [
          SizedBox(height: 28),
          Container(
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Icon(Icons.supervised_user_circle,
                              size: 65, color: Colors.white),
                          Text("Active",
                              style: TextStyle(
                                  fontSize: wid / 40,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Text("Arif Hasan Badsha",
                            style: TextStyle(
                                fontSize: wid / 27,
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: hei / 17,
                          child: Center(
                            child: InkWell(
                                onTap: changeState,
                                child: Container(
                                    width: wid/2.5,
                                    height: hei/30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          ///৳ 50.00
                                          AnimatedOpacity(
                                              opacity: _isBallanceShown ? 1 : 0,
                                              duration:
                                                  Duration(milliseconds: 500),
                                              child: Text('৳ 50.00',
                                                  style: TextStyle(
                                                      color: Colors.pink,
                                                      fontSize: 14))),

                                          /// ব্যালেন্স দেখুন
                                          AnimatedOpacity(
                                              opacity: _isBallance ? 1 : 0,
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              child: const Text(
                                                  'ব্যালেন্স দেখুন',
                                                  style: TextStyle(
                                                      color: Colors.pink,
                                                      fontSize: 14))),

                                          /// Circle
                                          AnimatedPositioned(
                                              duration: const Duration(
                                                  milliseconds: 1100),
                                              left: _isAnimation == false
                                                  ? 5
                                                  : 135,
                                              curve: Curves.fastOutSlowIn,
                                              child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  // padding: const EdgeInsets.only(bottom: 4),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: const FittedBox(
                                                      child: Text('৳',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 17)))))
                                        ]))),
                          ),
                        )
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Icon(
                        Icons.menu,size: 60,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changeState() async {
    _isAnimation = true;
    _isBallance = false;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
        () => setState(() => _isBallanceShown = true));
    await Future.delayed(
        Duration(seconds: 3), () => setState(() => _isBallanceShown = false));
    await Future.delayed(Duration(milliseconds: 200),
        () => setState(() => _isAnimation = false));
    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBallance = true));
  }
}
