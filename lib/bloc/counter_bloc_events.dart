part of 'counter_bloc.dart';

sealed class CounerEvent {}

final class CounterIncremented extends CounerEvent {}

final class CounterDecremented extends CounerEvent {}
