import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_bloc_events.dart';

final class CounterBloc extends Bloc<CounerEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });
    on<CounterDecremented>((event, emit) {
      if (state == 0) return;
      emit(state - 1);
    });
  }
}
