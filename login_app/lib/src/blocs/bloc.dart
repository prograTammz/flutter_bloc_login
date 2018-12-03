import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators{
  final _email = BehaviorSubject<String>();
  final _pass = BehaviorSubject<String>();
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _pass.stream.transform(validatePassword);

  Stream<bool> get submitValid => Observable.combineLatest2(email, password, (e,p)=> true);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _pass.sink.add;

  submit(){
    final validEmail = _email.value;
    final validPassword = _pass.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  dispose(){
    _email.close();
    _pass.close();
  }
}