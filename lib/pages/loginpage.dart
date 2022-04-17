import 'package:flutter/material.dart';
import 'package:sign_in_page/pages/spalshpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logoBack.png"),
            fit: BoxFit.none,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.2,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff1de9b6),
                  Color(0xff00c853),
                  //Color.fromARGB(150,31, 255, 87),
                ],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset("assets/icons/logo.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 170, bottom: 8),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.white,
                        fontFamily: 'RobotoSlab',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    top: 150, left: 20, right: 20, bottom: 10),
                child: Form(
                  //key: _key,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 350,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(color: Colors.greenAccent)
                        ),
                        child: TextFormField(
                          // validator: (val) => val.isEmpty ? 'Enter an email' : null,
                          // onChanged: (val){
                          //   setState(() => email = val);
                          // },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            contentPadding: EdgeInsets.all(10),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      Container(
                        width: 350,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(color: Colors.greenAccent)
                        ),
                        child: TextFormField(
                          // validator: (val) => val.length < 6 ? 'Use 6 or more characters with a mix of letters, numbers' : null,
                          // onChanged: (val){
                          //   setState(() => password = val);
                          // },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            contentPadding: EdgeInsets.all(10),
                            prefixIcon: Icon(Icons.vpn_lock),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                // go to home page(change regpage()) with home***
                                MaterialPageRoute(
                                    builder: (context) => SpalshPage()),
                              );

                              // if (_key.currentState.validate()) {
                              //   setState(() => loding = true);
                              //   dynamic result = await _auth.logInWithEamilPass(email, password);
                              //   if(result == null){
                              //     setState(() {
                              //       error = 'valid email or password';
                              //       loding = false;
                              //     });
                              //   }else{
                              //     Navigator.push(
                              //       context,
                              //       // go to home page(change regpage()) with home***
                              //       MaterialPageRoute(builder: (context) => SpalshPage()),
                              //     );
                              //   }
                              // }
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 120, bottom: 100),
                              width: 250,
                              height: 45,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xff1de9b6),
                                  Color(0xff00c853),
                                ],
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "LogIn",
                                style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpalshPage()),
                          );
                        },
                        child: Text(
                          "FACULTY OF SCIENCE",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

