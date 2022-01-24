import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hotels/models/hotel.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  static const routeName = '/';
  HomeView({Key key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}



class _HomeViewState extends State<HomeView> {

  bool isGridView = false; //переменная отвечающая за вид экрана, плитка или список
  bool isLoading = false;
  List <HotelPreview> hotels;

  @override
  void initState() {
    getHotels();
  }

  getHotels() async{
    setState(() {
      isLoading = true;
    });
    final response = await http.get(Uri.parse("https://run.mocky.io/v3/ac888dc5-d193-4700-b12c-abb43e289301"));
    var data = json.decode(response.body);
    hotels = data.map<HotelPreview>((hotel) => HotelPreview.fromJson(hotel)).toList();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Builder(builder: (context) => IconButton(
            icon: Icon(Icons.view_list),
              onPressed: (){
                setState(() {
                  isGridView = false;
                });
                print('List $isGridView');
          })),
          Builder(builder: (context) => IconButton(
              icon: Icon(Icons.view_comfortable),
              onPressed: (){
                setState(() {
                  isGridView = true;
                });
                print('Grid $isGridView');
              })),
        ],
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator(),)
          : isGridView
          ? GridView.count(
            childAspectRatio: 1,
            crossAxisCount: 2,
            children: <Widget>[
              ...hotels.map((hotel) {
              return Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,//радиус у картинки в вверху
                margin: EdgeInsets.all(7),
                color: Colors.white,
                shadowColor: Colors.blueGrey,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                          AspectRatio(
                              aspectRatio:2,
                              child:Image.asset('assets/images/${hotel.poster}', fit: BoxFit.fill,),
                          ),
                          AspectRatio(
                            aspectRatio:3.5,
                            child:Center(child:   Text('${hotel.name}', textAlign: TextAlign.center, ),),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  print('Подробнее');
                                  Navigator.of(context).pushNamed('/hotel', arguments: {'name': hotel.name, 'uuid': hotel.uuid});
                                },
                                child: Text('Подробнее'),
                              ),
                            ),
                          )

                  ],
                ),
              );
              })
            ],
      )
          : ListView(
            children: <Widget>[
              ...hotels.map((hotel) {
                return Card(
                  margin: EdgeInsets.all(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Colors.white,
                  shadowColor: Colors.blueGrey,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                     Container(
                       height: 180,
                       child: Column(
                         children: <Widget>[
                           Expanded(
                             flex: 2,
                             child: SizedBox.expand(
                               child: Image.asset(
                                   'assets/images/${hotel.poster}',
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                           Expanded(
                             child: ListTile(
                               title: Text(hotel.name),
                               trailing: ElevatedButton(
                                 child: Text('Подробнее',style: TextStyle(color: Colors.white),),
                                 onPressed: () {
                                   print('Подробнее');
                                   Navigator.of(context).pushNamed('/hotel', arguments: {'name': hotel.name, 'uuid': hotel.uuid});
                                 },
                               ),
                             ),
                             flex: 1,
                           ),
                         ],
                       ),
                     )
                    ],
                  ),
                );
              })
            ],
      )
    );
  }
}


