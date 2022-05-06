// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(height: 10),
            //logo
      
            //text
            
            Text(
              'Hello',
              style: TextStyle(
               fontWeight: FontWeight.bold, 
               fontSize: 24,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Welcome back to your one stop coffee shop',
              style: TextStyle(
               
               fontSize: 15,
              ),
            ),
            
            SizedBox(height: 20),
      
            //email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal :25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            //password

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal :25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
      
            
            SizedBox(height: 10),
            //sign-in
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: Center(
                  child: Text('Sign',
                  style: TextStyle(color: Colors.white),
                  )
                ),
              ),
            ),

            SizedBox(height: 10),
            //register
          ]),
        ),
      ),
      
    );
  }
}