import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context){
    Container(
      margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
          ],
        ),
    );
  }
  Widget emailField(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration:  InputDecoration(
        hintText: 'you@exmaple.com',
        labelText: 'Email Address',
      ),
    );
  }
  Widget passwordField(){
    return TextField(
      decoration: InputDecoration(
        hintText: 'your password',
        labelText: 'Password',
      ),
    );
  }
}