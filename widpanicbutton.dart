import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PaBu extends StatelessWidget{

  String urlOn = 'https://dweet.io/dweet/for/ati4664658526?state=on';

  String urlOff = 'https://dweet.io/dweet/for/ati4664658526?state=off';

  Future<String> makeRequestOn() async{
    var request = await http.get(Uri.encodeFull(urlOn), headers: {'Accept':'aplication/json'});
    
    List data = json.decode(request.body);
    print(data[1]['title']);
    return ("");
  }

    Future<String> makeRequestOff() async{
    var request = await http.get(Uri.encodeFull(urlOff), headers: {'Accept':'aplication/json'});
    
    List data = json.decode(request.body);
    print(data[1]['title']);
    return ("");
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(
            child: Text('ON'),
            onPressed: makeRequestOn,
          ),
          FloatingActionButton(
            child: Text('Off'),
            onPressed: makeRequestOff,
          )
        ]
      )
    );
  }
}