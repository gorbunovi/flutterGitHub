import 'package:flutter/material.dart';

class ShowBottomSheet extends StatefulWidget {
  ShowBottomSheet({Key key}) : super(key: key);

  @override
  _ShowBottomSheetState createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: <Widget>[
          Column(children: <Widget>[
            MyListTile(),
            MyBotton(),
          ]),
        ],
      ),
    );
  }
}

class MyListTile extends StatefulWidget {
  MyListTile({Key key}) : super(key: key);
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text('Сумма'),
        leading: Icon(Icons.credit_card),
        trailing: Text('200руб.'),
      ),
    );
  }
}

class MyBotton extends StatefulWidget {
  MyBotton({Key key}) : super(key: key);
  @override
  _MyBottonState createState() => _MyBottonState();
}

class _MyBottonState extends State<MyBotton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text('Оплатить'),
        color: Colors.grey[300],
        onPressed: () async {
          Navigator.pop(context);
        },
      ),
    );
  }
}
