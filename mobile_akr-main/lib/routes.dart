import 'package:flutter/material.dart';
import 'package:mobile_akr/screen/screen.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home(nomorID: "test123",));
      case '/simpanan':
        return MaterialPageRoute(builder: (_) => Simpanan());
      case '/pembiayaan':
        return MaterialPageRoute(builder: (_) => Pembiayaan());
      case '/tabungan':
        return MaterialPageRoute(builder: (_) => Tabungan());
    // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }

}