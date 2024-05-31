import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile_akr/model/modeltest.dart';

class Repository{
  final _baseUrl = 'https://-';

   Future getData() async{
     try{
       final response = await http.get(Uri.parse(_baseUrl + '/cobalist'));
       if (response.statusCode  == 200) {
         // print (response.body);
         Iterable it = jsonDecode(response.body);
         List<Modeltesting> mod = it.map((e) => Modeltesting.fromJson(e)).toList();
         return mod;
         // return jsonEncode(response.body);
       }
     } catch (e) {
       print(e.toString());
     }
   }
 }