import 'package:flutter/material.dart';
import 'package:flutter_apps/customWidget/customAppbar.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var responsive_height = MediaQuery.of(context).size.height;
    var responsive_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:CustomAppBar(),
       body: SafeArea(
         child: Column(
           children: [

           ],
         ),
       ),
    );
  }
}
