import 'package:authapp/pages/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 120.0,),
            Container(
              height: 200,
              width: 200,
              child: Image.asset("images/flutter.jpeg", fit: BoxFit.cover,),
            ),
             SizedBox(height: 100.0,),
            GestureDetector(
              onTap: () {
                AuthMethods().signInWithGoogle(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFf58634),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("images/google.png")),
                        SizedBox(
                          width: 30.0,
                        ),
                        Center(
                          child: Text(
                            "Sign in with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () async {
                AuthMethods().signInWithApple();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFf58634),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("images/apple.png")),
                        SizedBox(
                          width: 30.0,
                        ),
                        Center(
                          child: Text(
                            "Sign in with Apple",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
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
