
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {

  late List data;

  Future<String> getData() async{

    // http.Response response = await http.get(
    //
    //     Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    //     // Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
    //     // Uri url = Uri.encodeFull("http://128.199.255.145/api/m_dashboard");
    //     headers: {
    //       "Accept":"application/json"
    //     }
    // );

    http.Response response = await http.post(

        Uri.parse("https://akr.sirkah.id/api/m_saldo_tabungan"),
        // Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        // Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        // Uri url = Uri.encodeFull("http://128.199.255.145/api/m_dashboard");

      body: {
        "cif_no" :  "500000000007619",
        // "cif_no" :  "500000000008521",

        // "name": name,
        // "job": job,
      },
    );
    setState((){
      data = json.decode(response.body);
    });
    return "Success!";
  }

  @override
  void initState(){
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(
      //   title: new Text("Data from API 2"),
      //   backgroundColor: Colors.blueAccent,
      // ),
      body:

      ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Text(data[index]["product_name"]),
          );
        },
      ),
    );
  }

}