import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'CreateAccount.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> { 
  bool _isLoggedIn = false;
  GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: _isLoggedIn
                ? CreateAccount(_userObj)
                : Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset("assets/LoginMainLogo.png"),
                          ),
                          Text(
                            "Welcome !",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text("Sign in or Sign up With Google",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            child: Image.asset("assets/googleLogo.png"),
                            onTap: () async {
                              GoogleSignInAccount account =
                                  await _googleSignIn.signIn();
                              
                              setState(() {
                                _isLoggedIn = true;
                                _userObj = account;
                              });
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Contact With Google"),
                          Image.asset("assets/shadow.png")
                        ],
                      ),
                    ),
                  )),
      ),
    );
  }
}
