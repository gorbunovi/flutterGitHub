import 'package:cubit/presentations/home/controller/counter_controller.dart';
import 'package:cubit/presentations/home/controller/state.dart';
import 'package:cubit/presentations/home/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => HomeWidget(
              incrementCounter: () async => BlocProvider.of<HomeCubit>(context).incrementCounter(),
            ),
            incriment: () => HomeWidget(
              incrementCounter: () async => BlocProvider.of<HomeCubit>(context).incrementCounter(),
            ),
            dicriment: () => HomeWidget(
              incrementCounter: () async => BlocProvider.of<HomeCubit>(context).incrementCounter(),
            ),
            getCount: () => HomeWidget(
              incrementCounter: () async => BlocProvider.of<HomeCubit>(context).incrementCounter(),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: _buildBody(context),
    );
  }
}
