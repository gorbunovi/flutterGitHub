import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width;
  double _height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 200,
<<<<<<< HEAD
            flexibleSpace: Stack(
              children: <Widget>[
                FlexibleSpaceBar(
                  title: Text('text'),
                  background: Image.network('https://picsum.photos/300/200', fit: BoxFit.cover),
                ),
              ],
=======
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Page title'),
              background: Stack(         // Image.network('https://picsum.photos/300/200', fit: BoxFit.cover,),
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.network('https://picsum.photos/300/200', fit: BoxFit.cover,),
                  ),
                  Container(
                    color: Color(0xff000000).withOpacity(0.5),
                  )
                ],
              )
>>>>>>> df6311837a8adf574b8825ebe2364d4823b8fa28
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return SingleChildScrollView(
                    child: Text("""Для проверки сервера откройте какой-нибудь браузер и введите в адресной строке http://127.0.0.1:3000, то есть — тот адрес сервера, который будет выведен в консоли после его успешного запуска. Если всё работает как надо — на странице будет выведено «Hello World».

                    Разберём этот пример.

                        Для начала, обратите внимание на то, что код содержит команду подключения модуля http.

                        Платформа Node.js является обладателем замечательного стандартного набора модулей, в который входят отлично проработанные механизмы для работы с сетью.

                        Метод createServer() объекта http создаёт новый HTTP-сервер и возвращает его.

                        Сервер настроен на прослушивание определённого порта на заданном хосте. Когда сервер будет готов, вызывается соответствующий коллбэк, сообщающий нам о том, что сервер работает.
        
                        Когда сервер получает запрос, вызывается событие request, предоставляющее два объекта. Первый — это запрос (req, объект http.IncomingMessage), второй — ответ (res, объект http.ServerResponse). Они представляют собой важнейшие механизмы обработки HTTP-запросов.

                        Первый предоставляет в наше распоряжение сведения о запросе. В нашем простом примере этими данными мы не пользуемся, но, при необходимости, с помощью объекта req можно получить доступ к заголовкам запроса и к переданным в нём данным.
    
                        Второй нужен для формирования и отправки ответа на запрос.
    
                        В данном случае ответ на запрос мы формируем следующим образом. Сначала устанавливаем свойство statusCode в значение 200, что указывает на успешное выполнение операции:
                        Для проверки сервера откройте какой-нибудь браузер и введите в адресной строке http://127.0.0.1:3000, то есть — тот адрес сервера, который будет выведен в консоли после его успешного запуска. Если всё работает как надо — на странице будет выведено «Hello World».
    
                        Разберём этот пример.
                        
                        Для начала, обратите внимание на то, что код содержит команду подключения модуля http.
                        
                        Платформа Node.js является обладателем замечательного стандартного набора модулей, в который входят отлично проработанные механизмы для работы с сетью.
                        
                        Метод createServer() объекта http создаёт новый HTTP-сервер и возвращает его.
                        
                        Сервер настроен на прослушивание определённого порта на заданном хосте. Когда сервер будет готов, вызывается соответствующий коллбэк, сообщающий нам о том, что сервер работает.
                        
                        Когда сервер получает запрос, вызывается событие request, предоставляющее два объекта. Первый — это запрос (req, объект http.IncomingMessage), второй — ответ (res, объект http.ServerResponse). Они представляют собой важнейшие механизмы обработки HTTP-запросов.
                        
                        Первый предоставляет в наше распоряжение сведения о запросе. В нашем простом примере этими данными мы не пользуемся, но, при необходимости, с помощью объекта req можно получить доступ к заголовкам запроса и к переданным в нём данным.
                        
                        Второй нужен для формирования и отправки ответа на запрос.
                        
                        В данном случае ответ на запрос мы формируем следующим образом. Сначала устанавливаем свойство statusCode в значение 200, что указывает на успешное выполнение операции:"""),
                  );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
