part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class GetCounter extends CounterEvent {
  final String name;
  GetCounter(this.name);
}

class SetCounter extends CounterEvent {
  final String name;
  SetCounter(this.name);
}
