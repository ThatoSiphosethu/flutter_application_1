// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/auth_page.dart';
import 'package:flutter_application_1/pages/home/nav_page.dart';
//import 'package:flutter_application_1/pages/auth/login_page.dart';
//import 'package:flutter_application_1/pages/home/home_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //home or authentication page
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NavigationPage();
          }else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
