import 'package:demo_cubit/presentation/auth/cubit_check/check_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckAppCubit extends Cubit<CheckAppState> {
  CheckAppCubit() : super(CheckAppState());
  Future check() async {
    state.checkPassword = !state.checkPassword;
    emit(state.copyWith(checkPassword: state.checkPassword));
  }

  Future rememberMe() async {
    state.checkRemember = !state.checkRemember;
    emit(state.copyWith(checkRemember: state.checkRemember));
  }
}
