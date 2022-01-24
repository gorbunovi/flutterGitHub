import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/provider/todo_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TextEditingController _controllerAddTask = TextEditingController();
  TextEditingController _controllerSearchTask = TextEditingController();

  String isSearchTask = '';

  static const List<Tab> _pages = <Tab>[
    Tab(text: 'Список задач'),
    Tab(text: 'Выполненные')
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _pages.length, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            _tabController.index == 0 ? Colors.black : Colors.indigoAccent,
//------------------------------------------------------------Form----------------------------------------------
        title: _tabController.index == 0
            ? Consumer<TodoProvider>(builder: (context, todoProvider, child) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        controller: _controllerAddTask,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 2.0),
                          ),
                          hintText: 'Добавить задачу',
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        child: Text(
                          'Добавить',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          if (_controllerAddTask.text != '') {
                            todoProvider.add(Todo(
                                id: UniqueKey(),
                                task: _controllerAddTask.text,
                                isDone: false));
                            _controllerAddTask.clear();
                          }
                        },
                      ),
                    ),
                  ],
                );
              })
//==================================================================Search==============================================================
            : Row(
                children: <Widget>[
                  Expanded(
                      child: TextFormField(
                    onChanged: (text) {
                      setState(() {
                        isSearchTask = text;
                      });
                    },
                    controller: _controllerSearchTask,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          _controllerSearchTask.clear();
                        },
                        icon: Icon(Icons.search),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 3.0),
                      ),
                      hintText: 'Поиск',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  )),
                ],
              ),
//==================================================================Search==============================================================
        bottom: TabBar(
          indicatorWeight: 5.0,
          controller: _tabController,
          indicatorColor: Colors.blueAccent,
          tabs: _pages,
        ),
      ),
      body: _tabController.index == 0
          ? Consumer<TodoProvider>(builder: (context, vm, child) {
              return ListView(
                children: vm.todo
                    .map((todo) => CheckboxListTile(
                          value: todo.isDone,
                          onChanged: (v) {
                            vm.isDone(todo.id);
                          },
                          title: Text('${todo.task}'),
                        ))
                    .toList(),
              );
            })
          : Consumer<TodoProvider>(builder: (context, vm, child) {
              return ListView(
                children: vm
                    .getTodoListIsDone(isSearchTask)
                    .map((todo) => ListTile(
                          title: Text('${todo.task}'),
                          onTap: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text(
                                    'Вы уверенны, что хотите удалить задачу?'),
                                actions: [
                                  Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          vm.removeTast(todo.id);
                                          Navigator.pop(
                                            context,
                                          );
                                        },
                                        child: Text('Да'),
                                        style: TextButton.styleFrom(
                                          primary: Colors.black,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Нет'),
                                        child: Text('Нет'),
                                        style: TextButton.styleFrom(
                                          primary: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ))
                    .toList(),
              );
            }),
    );
  }
}
