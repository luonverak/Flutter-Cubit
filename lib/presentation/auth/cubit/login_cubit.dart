import 'package:demo_cubit/presentation/auth/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());
  Future<void> loginAuth(BuildContext context, LoginState loginState) async {
    if (loginState.username == 'sok' && loginState.password == 'sok123') {
      emit(state.copyWith(username: state.username, password: state.password));
      print('ok');
      Navigator.pushNamed(context, '/HomeScreen');
    } else {
      print('no');
    }
  }
}
