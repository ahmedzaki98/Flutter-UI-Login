import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_page/pages/login.dart';
import 'package:sign_in_page/pages/loginpage.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({Key? key}) : super(key: key);

  @override
  _SpalshPageState createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
            colors: [
              Color(0xFF00E676),
              Color(0xff1de9b6),
              Color(0xff00c853), //OXFF00C853
            ], // red to yellow
          ),
        ),
        child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.0, -0.5),
                  child: Image.asset("assets/icons/scilogo.png",
                  width: 300,
                  height: 300,
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.05),
                  child: Text(
                    'CAIRO',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 55.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 40.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.15),
                  child: Text(
                    'UNIVERSITY',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 65.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 35.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.24),
                  child: Text(
                    'FACULTY OF SCIENCE',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 45.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 35.0,
                      letterSpacing: 1.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ],
            ),
        )
      ),
    );
  }
}
