import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top:25.0),
            ),
            submitButton(),
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
  Widget submitButton(){
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: (){},
    );
  }
}