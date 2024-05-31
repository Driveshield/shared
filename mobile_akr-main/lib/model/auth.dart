
import 'dart:convert';

// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

// Future<void> signup(String email, String password) async {
class Auth with ChangeNotifier {
void login(String? username, String? password) async {
  Uri url = Uri.parse(
      "https://-");

  var response = await http.post(
    url,
    body: json.encode({
      "Username": username,
      "Password": password,
    }),
  );

  print(json.decode(response.body));

  // try {
  //   var response = await http.post(
  //     url,
  //     body: json.encode({
  //       "email": email,
  //       "password": password,
  //       "returnSecureToken": true,
  //     }),
  //   );

  //   var responseData = json.decode(response.body);
  //
  //   if (responseData['error'] != null) {
  //     throw responseData['error']["message"];
  //   }
  //
  //   _tempidToken = responseData["idToken"];
  //   tempuserId = responseData["localId"];
  //   _tempexpiryDate = DateTime.now().add(
  //     Duration(
  //       seconds: int.parse(responseData["expiresIn"]),
  //     ),
  //   );
  // } catch (error) {
  //   throw error;
  // }

}
}
