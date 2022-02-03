import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class resetPassword extends StatefulWidget {
  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  bool hiddenpassword = true;
  bool _checkbox = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var responsive_height = MediaQuery.of(context).size.height;
    var responsive_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.deepOrange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: responsive_height / 6,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: responsive_height / 15),
                                Text('Reset Password',
                                    style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          fontSize: responsive_width / 12,
                                          color: Color(0xFF393536)),
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('Enter your new password',
                                    style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          fontSize: responsive_width / 21,
                                          color: Color(0xFF393536)),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Image.asset("assets/forgetpass.png",
                                    height: responsive_height / 5),
                                TextField(
                                  maxLength: 8,
                                  obscureText: hiddenpassword,
                                  controller: passController,
                                  style: TextStyle(color: Color(0xFF393536)),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          hiddenpassword = !hiddenpassword;
                                        });
                                      },
                                      icon: Icon(
                                        hiddenpassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Color(0xFF393536),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xFF393536),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        color: Color(0xFF393536),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        color: Color(0xFF393536),
                                      ),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(color: Color(0xFF393536)),
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(color: Color(0xFF393536)),
                                    ),
                                  ),
                                ),
                                TextField(
                                  maxLength: 8,
                                  obscureText: hiddenpassword,
                                  controller: passController,
                                  style: TextStyle(color: Color(0xFF393536)),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          hiddenpassword = !hiddenpassword;
                                        });
                                      },
                                      icon: Icon(
                                        hiddenpassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Color(0xFF393536),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xFF393536),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        color: Color(0xFF393536),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        color: Color(0xFF393536),
                                      ),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(color: Color(0xFF393536)),
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(color: Color(0xFF393536)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange[900]),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: (Color(0xFFF68712)),
                                    fixedSize: Size(320, 65),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30))),
                                onPressed: () {},
                                child: Text(
                                  'Reset Password',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 24, color: Color(0xFF393536)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: responsive_width / 2.8,
              top: responsive_height / 10,
              left: responsive_width / 2.8,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(responsive_width / 5.3)),
                elevation: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: responsive_width / 7.8,
                  backgroundImage: AssetImage("assets/applogo.png"),
                ),
              )),
        ],
      ),
    );
  }
}
