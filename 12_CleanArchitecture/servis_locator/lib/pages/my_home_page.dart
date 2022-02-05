
import 'package:buisnece_packege/buisnece_packege.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  late final CounterBloc _bloc;


  @override
  void initState() {
    _bloc = BlocFactory.instance.get<CounterBloc>();
  }


  @override
  void dispose() {
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<CounterBloc>(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
                StreamBuilder(
                  stream: _bloc.outputStateStream,
                  builder: (context, snapshot) {
                    return Text(
                        '${snapshot.data??'0'}',
                        style: Theme.of(context).textTheme.headline4,
              );
                  }
                ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                _bloc.inputEventSink.add(CounterEvent.event_increment);
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            SizedBox(width: 20,),
            FloatingActionButton(
              onPressed: (){
                _bloc.inputEventSink.add(CounterEvent.event_dicrement);
              },
              tooltip: 'Increment',
              child: const Icon(Icons.minimize),
            ),
          ],
        )

      ),
    );
  }
}