import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:guided/screens/home.dart';
import 'package:guided/screens/sign_up.dart';
import 'package:guided/util/colors_util.dart';

import '../reusable_widgets/reusable_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key?key}) : super(key:key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("000000"), 
            hexStringToColor("000000"),
            hexStringToColor("4C00BC")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.15, 20, 0), 
                child: Column(
                  children: <Widget>[
                    logoWidget("assets/images/Icon_Logo.png"),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Welcome!",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    reusableTextField("Enter UserName", Icons.person_outline, false, 
                    _emailTextController),
                    const SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true, 
                    _passwordTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    signInSignUpButton(context, true, (){
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailTextController.text, 
                        password: _passwordTextController.text).then((value){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                    }),
                    signUpOption()
                  ],
                ),
              ),
            ),
        ),
    );
  }
  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            child:const Text(
              " Sign Up",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          )
      ],
    );
  }

}