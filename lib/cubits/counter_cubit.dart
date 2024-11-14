import 'package:basketball_points/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamApoints=0;
  int teamBpoints=0;
  void teamIcrement({required String team,required int buttonNumber})
  {
    if(team=='A')
    {
      teamApoints+=buttonNumber;
      emit(CounterAIncrementState());
    }
    else{
      teamBpoints+=buttonNumber;
      emit(CounterBIncrementState());
    }
  }
  void counterReset(){
    teamApoints=0;
    teamBpoints=0;
    emit(CounterResetState());
  }

}