
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotels/models/hotel_info.dart';
import 'package:http/http.dart' as http;

class HotelView extends StatefulWidget {
  static const routeName = '/hotel';
  HotelView({Key key, this.name, this.uuid}) : super(key: key);
  final String uuid;
  final String name;

  @override
  _HotelViewState createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {

  bool isLoading = false;
  bool statusError = false;
  List<String> statusFree=[];
  List<String> statusPaid=[];
  HotelInfo _hotelInfo;
  List<String> photos = [];

  @override
  void initState() {
    getHotel();
  }

  getHotel() async{
    setState(() {
      isLoading = true;
    });
    final response = await http.get(Uri.parse("https://run.mocky.io/v3/${widget.uuid}"));
    if (response.statusCode==200){
      _hotelInfo = HotelInfo.fromJson(jsonDecode(response.body)) ;
      //

      setState(() {
        statusError = false;
      });
      photos = _hotelInfo.photos.map((e) => 'assets/images/$e').toList();
      // print(photos);

    } else {
      setState(() {
        statusError = true;
      });
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name),
      ),
      body: isLoading ? Center(child: CircularProgressIndicator(),)
          : statusError ? Center(child: Text('Контент временно не доступен'),)
          :  Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                // enlargeCenterPage: true,
              ),
              items: photos.map((item) => Container(
                width: 280,
                child: Image.asset('${item.toString()}', fit: BoxFit.fill,),
               )).toList(),
            )
          ),
          Expanded(
            flex: 4,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 5,),
                          child: Text('Страна: ${_hotelInfo.address.country}', textAlign: TextAlign.left, style: TextStyle(fontSize: 18.0),
                          )
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text('Город: ${_hotelInfo.address.city}', textAlign: TextAlign.left, style: TextStyle(fontSize: 18.0),)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text('Улица: ${_hotelInfo.address.street}', textAlign: TextAlign.left, style: TextStyle(fontSize: 18.0),)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text('Рейтинг: ${_hotelInfo.rating}', textAlign: TextAlign.left, style: TextStyle(fontSize: 18.0),)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        child: Text('Сервисы', textAlign: TextAlign.left, style: TextStyle(fontSize: 30.0),),
                      ),
                    ],
                  ),
                  Expanded (
                    child:SafeArea(
                    child: SingleChildScrollView(
                        child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            // Expanded(child: Container()),
                            SizedBox(width: 10,),
                            Expanded(
                              // flex: 10,
                              // alignment: Alignment.centerLeft,
                              // margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              child: Text('Платные', textAlign: TextAlign.left, style: TextStyle(fontSize: 24.0),),
                            ),
                            Expanded(
                              // flex: 10,
                              // alignment: Alignment.centerLeft,
                              // margin: EdgeInsets.only(left: 5, top: 10, bottom: 5, right: 10),
                              child: Text('Бесплатно', textAlign: TextAlign.left, style: TextStyle(fontSize: 24.0),),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            // Expanded(child: Container()),
                            SizedBox(width: 10,),
                            Expanded(
                              // flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ..._hotelInfo.services.paid.map((p) {
                                    return Text('$p', textAlign: TextAlign.left,);
                                  })
                                ],
                              ),
                            ),
                            Expanded(
                                // flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ..._hotelInfo.services.free.map((f) {
                                      return Text('$f', textAlign: TextAlign.left,);
                                    }),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),
                    ),
                  ),
                ],
              )
          ),
        ],
      )
    );
  }
}


