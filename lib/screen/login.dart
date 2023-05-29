// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unibit/screen/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController PhoneCtrlr = TextEditingController();
  TextEditingController PasswdCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          color: Color.fromARGB(255, 238, 221, 221),
          child: Center(
            child: SvgPicture.string(APP_ICON!),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height/2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(height: 10),
              TextField(
                decoration:  InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.string(CALL_ICON!),
                ),
               
                    hintText: "Mobile Number",
                    helperStyle: TextStyle(fontSize: 16),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 238, 221, 221)),
                onSubmitted: (String value) {
                  debugPrint(value);
                },
              ),
              SizedBox(height: 10),
              TextField(
                decoration:  InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.string(LOCK_ICON),
                  ),
                    hintText: "Password",
                    helperStyle: TextStyle(fontSize: 16),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 238, 221, 221)),
                onSubmitted: (String value) {
                  debugPrint(value);
                },
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: orange,fontWeight: FontWeight.bold,fontSize: 14),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(55),
                    ),
                    color: orange),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
             Spacer(),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(55),
                    ),
                    color: Color.fromRGBO(0, 82, 190, 1)),
                child: Center(
                  child: Text(
                    "Login With OTP",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: RichText(text: TextSpan(children:[
                  TextSpan(text: "Don’t have an account?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  TextSpan(text: "Sign up now",style: TextStyle(color: orange,fontWeight: FontWeight.bold))
                ]),
                
                ),
              ),
              Spacer()
            ],
          ),
        )
      ],
    ));
  }
}
