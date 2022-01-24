import 'package:flutter/material.dart';

class ArtistPage extends StatefulWidget{
  static const routeName = '/artist';
  ArtistPage({Key key, this.name, this.about}): super(key: key);
  final String name;
  final String about;

  @override
  _ArtistPageState createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${widget.name}'),
      ),
      body: SingleChildScrollView(
        child: Text(widget.about),
      )
    );
  }
}