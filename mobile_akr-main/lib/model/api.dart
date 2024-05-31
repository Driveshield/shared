import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  // void connectAPI(String name, String job) async {
  void connectAPI(String cif_no) async { //tambahan ubahan
    // Uri url = Uri.parse("https://reqres.in/api/users");
    Uri url = Uri.parse("-----");//tambahan ubahan

    var hasilResponse = await http.post(
      url,
      body: {
        "cif_no" : cif_no,
        // "name": name,
      },
    );

    _data = json.decode(hasilResponse.body);
    notifyListeners();
  }
}