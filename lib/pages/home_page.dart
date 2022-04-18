

import 'package:flutter/material.dart';
import 'package:herewego/pages/signin_page.dart';
import 'package:herewego/services/auth_service.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body:Center(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)
          ),
          child: FlatButton(
            onPressed:(){
              AuthService.signOutUser(context);
              Navigator.pushReplacementNamed(context, SignInPage.id);
            },
            child: Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
        ),
      )
    );
  }
}