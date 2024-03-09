import 'package:demo_cubit/presentation/auth/cubit/login_cubit.dart';
import 'package:demo_cubit/presentation/counter_screens/cubit/counter_cubit.dart';
import 'package:demo_cubit/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: AppRoute.appRoute,
      ),
    );
  }
}
