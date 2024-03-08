import 'package:demo_cubit/presentation/screens/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _cubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Cubit'),
      ),
      body: Center(
        child: BlocBuilder(
          bloc: _cubit,
          builder: (context, state) {
            return Text(
              '${_cubit.state.counter}',
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => _cubit.increase(),
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => _cubit.descrease(),
            icon: const Icon(
              Icons.remove,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
