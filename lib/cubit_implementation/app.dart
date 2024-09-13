import 'package:counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  final CounterCubit counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: const Text('Counter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, counter) {
                return Text(
                  "Here's Your Count : $counter",
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.pink[100],
                  onPressed: () {
                    counterCubit.increment();
                  },
                  tooltip: 'Add',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.pink[100],
                  onPressed: () {
                    counterCubit.decrement();
                  },
                  tooltip: 'Remove',
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
