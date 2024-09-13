import 'package:counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter App',
        home: CounterPage(title: 'Counter App'),
      ),
    );
  }
}