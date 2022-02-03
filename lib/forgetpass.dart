import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forgetPass extends StatelessWidget {
  const forgetPass({Key? key}) : super(key: key);

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
                          child: Column(children: [
                            Column(
                              children: [
                                SizedBox(height: responsive_height / 15),
                                Text('Forget Password',
                                    style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          fontSize: responsive_width / 10,
                                          color: Color(0xFF393536)),
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('Please enter email to continue',
                                    style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          fontSize: responsive_width / 21,
                                          color: Color(0xFF393536)),
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Image.asset("assets/forgetpass.png",
                                    height: responsive_height / 5),
                                SizedBox(
                                  height: responsive_height / 20,
                                ),
                                TextField(
                                  style: TextStyle(color: Color(0xFF393536)),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.mail,
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
                                      labelText: 'Email or phone number',
                                      labelStyle:
                                          TextStyle(color: Color(0xFF393536)),
                                      hintText:
                                          'Enter your email or phone number'),
                                ),
                                SizedBox(
                                  height: responsive_height / 15,
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
                                      'Send Email',
                                      style: GoogleFonts.ubuntu(
                                        textStyle: TextStyle(
                                            fontSize: 29,
                                            color: Color(0xFF393536)),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  width: responsive_width / 1,
                                  margin: EdgeInsets.only(top: 20),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '''Don't have an account? ''',
                                      style: GoogleFonts.ubuntu(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF393536)),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Sign Up',
                                          style: GoogleFonts.ubuntu(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xFFF68712)),
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) => SignUps()));
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ])),
                    ),
                  ),
                )
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
