import 'dart:convert';
import 'package:albums_route/artist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'fetch_file.dart';


class ArtistsPage extends StatefulWidget{
  static const routeName = '/artists';
  ArtistsPage({Key key}): super(key: key);

  @override
  _ArtistsPageState createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage>{
List<Artist> artists;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artists'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child:  Column(
            children: <Widget>[
              ListTile(
                title: Text('Home',style: TextStyle(fontSize: 22.0),),
                onTap: (){
                  Navigator.of(context).pushNamed('/');
                },
              ),
              ListTile(
                selected: true,
                title: Text('Artists',style: TextStyle(fontSize: 22.0),),
                onTap: (){
                  Navigator.of(context).pushNamed('/artists');
                },
              )
            ],
          ),
        ),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/artists.json"),
        builder: (context, snapshot){
          if(snapshot.data!=null){
            var data = json.decode(snapshot.data);
            artists = data.map<Artist>((artist) => Artist.fromJson(artist)).toList();
            return ListView(
              children: <Widget>[
                ...artists.map((artist) {
                  return ListTile(
                    title: Text('${artist.name}'),
                    onTap: (){
                      Navigator.of(context).pushNamed('/artist', arguments: {'name': artist.name, 'about': artist.about});
                    },
                  );
                }).toList(),
              ],
            );
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}