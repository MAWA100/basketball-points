import 'package:basketball_points/cubits/counter_cubit.dart';
import 'package:basketball_points/cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomPage extends StatelessWidget {
   HomPage({super.key});
  int teamApoints=0;
  int teamBpoints=0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: const Text('Points Counter'),
          ),
          body: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 42),
                      ),
                       Text(
                        '${teamApoints=BlocProvider.of<CounterCubit>(context).teamApoints}',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'A', buttonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            minimumSize: const Size(150, 60)),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'A', buttonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            minimumSize: const Size(150, 60)),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'A', buttonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            minimumSize: const Size(150, 60)),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 520,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 42),
                      ),
                       Text(
                        '${teamBpoints=BlocProvider.of<CounterCubit>(context).teamBpoints}',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'B', buttonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            minimumSize: const Size(150, 60)),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'B', buttonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            minimumSize: const Size(150, 60)),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'B', buttonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            minimumSize: const Size(150, 60)),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(
                flex: 3,
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).counterReset();
                  
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    minimumSize: const Size(150, 60)),
                child: const Text(
                  'Reset',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              const Spacer(
                flex: 5,
              )
            ],
          ),
        );
      },
    );
  }
}
