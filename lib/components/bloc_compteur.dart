import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/res/app_color.dart';
// part of 'bloc_example_bloc.dart';

@immutable
abstract class CounterEvent {
  const CounterEvent();
}

@immutable
class IncrementCounterEvent extends CounterEvent {
  const IncrementCounterEvent();
}

@immutable
abstract class CounterState {
  final int count;

  const CounterState(this.count);
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}

class CounterCurrent extends CounterState {
  CounterCurrent(int count) : super(count);
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  CounterBloc() : super(CounterInitial());

  void incrementCounter() {
    add(const IncrementCounterEvent());
  }

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementCounterEvent) {
      counter++;
      yield CounterCurrent(counter);
    }
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
        create: (_) => CounterBloc(),
        child: BlocBuilder<CounterBloc, CounterState>(
            builder: (BuildContext context, CounterState state) {
              int counter = state.count;
              
              return Scaffold(
                body:Center(
                  child :  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Text(state.count.toString()),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: AppColors.blue, // foreground
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context).incrementCounter();
                        },
                        child: Text('+1'),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
