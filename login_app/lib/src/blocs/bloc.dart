import 'dart:async';
import 'validators.dart';
class Bloc with Validators{
  final _email = StreamController<String>();
  final _pass = StreamController<String>();
  Stream<String> get Email => _email.stream;
  Stream<String> get password => _pass.stream;

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _pass.sink.add;
}