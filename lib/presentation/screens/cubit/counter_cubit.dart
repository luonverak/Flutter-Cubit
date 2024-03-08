import 'package:demo_cubit/presentation/screens/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increase() => emit(state.copyWith(counter: state.counter + 1));
  void descrease() => emit(state.copyWith(counter: state.counter - 1));
}
