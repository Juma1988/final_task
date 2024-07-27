part of 'bloc.dart';

class CounterStates {}

class CounterInitState extends CounterStates {}

class CounterChangedState extends CounterStates {
  final int count;

  CounterChangedState({required this.count});
}
