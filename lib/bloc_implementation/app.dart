import 'package:counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  final CounterBloc counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          backgroundColor: Colors.amber[200],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              bloc: counterBloc,
              builder: (context, counter) {
                return Text(
                  "Nice Counting Here's Your Count : $counter",
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
                  backgroundColor: Colors.amber[200],
                  onPressed: () {
                    counterBloc.add(CounterIncremented());
                  },
                  tooltip: 'Add',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber[200],
                  onPressed: () {
                    counterBloc.add(CounterDecremented());
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
