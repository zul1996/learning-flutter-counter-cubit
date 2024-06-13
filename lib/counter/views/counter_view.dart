import 'package:cubitstateapp/counter/counter.dart';
import 'package:cubitstateapp/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text("$state");
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_multiple_fab'),
            child: const Text("X"),
            onPressed: () {
              context.read<CounterCubit>().multiple();
            },
          ),
          FloatingActionButton(
            key: const Key('counterView_increment_fab'),
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
          ),
          FloatingActionButton(
            key: const Key('counterView_reset_fab'),
            child: const Icon(Icons.restore),
            onPressed: () {
              context.read<CounterCubit>().reset();
            },
          ),
          FloatingActionButton(
            key: const Key('counterView_decreament_fab'),
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
          ),
        ],
      ),
    );
  }
}
