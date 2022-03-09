import 'package:buisnece_packege/buisnece_packege.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///
  late CounterBloc _bloc = BlocProvider.of<CounterBloc>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Тестовое задание'),
          actions: [
            IconButton(
              onPressed: () {
                _bloc = Navigator.of(context).pushNamed('/SecondPage') as CounterBloc;
              },
              icon: const Icon(Icons.navigate_next),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterBloc, int>(builder: (context, state) {
                if (state == null) return const SizedBox.shrink();
                return Text(
                  state.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              }),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                _bloc.add(CounterIncrement());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                _bloc.add(CounterDecrement());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.minimize),
            ),
          ],
        ));
  }
}
