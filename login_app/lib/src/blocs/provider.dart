import 'package:flutter/material.dart';
import 'bloc.dart';
class Provider extends InheritedWidget{
  @override
    final bloc = new Bloc();
    bool updateShouldNotify(_) {
      
      return true;
    }
    Provider({Key key, Widget child})
      : super(key: key, child:child);
    static Bloc of(BuildContext context){
      return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
    }
}