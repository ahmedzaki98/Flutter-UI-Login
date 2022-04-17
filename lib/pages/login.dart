import 'package:flutter/material.dart';
import 'package:sign_in_page/pages/spalshpage.dart';

class Login extends StatefulWidget {
  static const String id = 'mentor sample 1';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color(0xFF00E676),
                  Color(0xff1de9b6),
                  Color(0xff00c853),
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            // #login, #welcome
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset("assets/icons/logo2.png",
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                      ),
                    ),
                  ),
                  //SizedBox(height: 10,),
                  const Text(
                    "Welcome to science",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const SizedBox(height: 60,),
                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const[
                              BoxShadow(
                                  color: Color(0XFF81C784),
                                  blurRadius: 25,
                                  offset: Offset(0,5)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "ID",
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      prefixIcon: Icon(Icons.perm_identity),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200
                                      )
                                  ),
                                ),
                                child: const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      prefixIcon: Icon(Icons.lock),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SpalshPage()
                              ),
                            );
                          },
                          //loginButton
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.all(10),
                            //margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                    colors: [
                                      Color(0xFF00E676),
                                      Color(0xff1de9b6),
                                      Color(0xff00c853),
                                    ]
                                ),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green[800]
                            ),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // #login SNS
                        const Text(
                          "FACULTY OF SCIENCES",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0XFF757575),
                              fontWeight: FontWeight.bold
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
    );
  }
}