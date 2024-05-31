import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_akr/model/auth.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/model/reppository.dart';
import 'package:mobile_akr/model/modeltest.dart';
import 'package:mobile_akr/routes.dart';
import 'package:mobile_akr/screen/screen.dart';
import 'package:mobile_akr/widget/menu_grid.dart';


import 'package:mobile_akr/widget/widget.dart';
import 'package:provider/provider.dart';
import 'package:mobile_akr/model/api.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery.of(context).size.height as Size;

    // return MultiProvider(
    //     providers: [
    //       ChangeNotifierProvider(
    //           create: (ctx) => Auth(),
    //       )
    // ]);

    // return MultiProvider(
    //   providers: [
    //
    //
    //      ChangeNotifierProvider(
    //         create: (ctx) => Auth(),
    //     ),
    //     // ChangeNotifierProvider(
    //     //   create: (ctx) => Colors.primarie(),
    //     // )
    //     // ChangeNotifierProxyProvider<Auth, Products>(
    //     //   create: (context) => Products(),
    //     //   update: (context, auth, products) =>
    //     //   products..updateData(auth.token, auth.userId),
    //     // ),
    //
    //   ],
    //   builder: (context, child) =>
    //       MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //
    //
    //         home: Login(),
    //
    //         // routes: {
    //         //   AddProductPage.route: (ctx) => AddProductPage(),
    //         //   EditProductPage.route: (ctx) => EditProductPage(),
    //         // },
    //       ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeStateful(),
      // home: ChangeNotifierProvider(
      //   create: (context) => HttpProvider(),
      //   // child: Home(nomorID: "cobatestmain123456",),
      //   // child: Home(nomorID: "500000000007619",),
      //   child: Login(),
      //   // child: Login(),
      // ),

      home: Login(),
    );
    // );
  }

}


//     return MaterialApp(
//       // onGenerateRoute: ,
//       // onGenerateInitialRoutes: ,
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       onGenerateRoute: RouteGenerator.generateRoute,
//
//
//       // home:  Cobalistapi(),
//       // home:  Login(),
//
//       // home: LayoutBuilder(
//       //   builder: (BuildContext context, BoxConstraints constraints) {
//       //     return Login();
//       //   }
//       // ),
//       // home: Scaffold(body: jajal()),
//       // home: Home(),
//       // home: Scaffold(body: TourismPlaceGrid()),
//       // home: BelajarGridView(),
//       // home: Login(tulisan: 'Flutter Demo Home Page'),
//       // home: const MyHomePage(tulisan: 'Flutter Demo Home Page'),
//     );
//   }
// }

  // class Cobalistapi extends StatefulWidget {
  //
  //
  // @override
  // State<Cobalistapi> createState() => _CobalistapiState();
  // // _CobalistapiState createdState() => _CobalistapiState();
  // }
  // // Widget build(BuildContext context){
  // class _CobalistapiState extends State<Cobalistapi> {
  //
  // List<Modeltesting> mod1 = [];
  // Repository repository = Repository();
  //
  // getData() async {
  // mod1 = await repository.getData();
  // setState(() {});
  // }
  //
  // @override
  // void initState() {
  // getData();
  // super.initState();
  // // super.initState((){});
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  // return Scaffold(
  // appBar: AppBar(),
  // body: ListView.separated(
  // itemBuilder: (context, index){
  // return Container(
  // child: Text(mod1[index].nameprod),
  // );
  // },
  // separatorBuilder: (context, index){
  // return Divider();
  // },
  // itemCount: mod1.length)
  //
  // );
  //
  // }
  // }
  //

// class BelajarGridView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//       // debugShowCheckedModeBanner: false,
//       return Scaffold(
//
//           body:
//
//           Center(
//             child: Container(
//               width: 90,
//               height: 100,
//                   // decoration: BoxDecoration(),
//               decoration: BoxDecoration(
//                 color: HexColor("#755ddb"),
//                 borderRadius: BorderRadius.circular(18.0),
//
//               ),
//                   // color: HexColor("#fff190"),
//                   child: GridView.count(
//                     crossAxisCount: 3,
//
//                     children: <Widget>[
//                       Image(
//                         image: AssetImage("assets/logos/akr-1.png"),
//                       ),
//                       Image(
//                         image: AssetImage("assets/logos/akr-1.png"),
//                       ),
//                       Image(
//                         image: AssetImage("assets/logos/akr-1.png"),
//                       ),
//                       Image(
//                         image: AssetImage("assets/logos/akr-1.png"),
//                       ),
//                     ],
//
//                     // children: List.generate(9, (index) {
//                     //   return Container(
//                     //
//                     //     child: Card(
//                     //       color: Colors.purple,
//                     //     ),
//                     //   );
//                     // }
//                     //
//                     // ),
//                   ),
//                 ),
//           ),
//       );
//
//   }
// }

// class Widget1 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("FLutter App #1"),
//         backgroundColor: Color(0xFFFF7043),
//       ), backgroundColor: Colors.yellow[200],
//
//       // body: new Center(
//       //   child: new Text(
//       //     "meetAp Flutter Basic",
//       //     style: TextStyle(color: Colors.redAccent[400]),
//       //   ),
//       // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: null,
//         tooltip: 'Camera',
//         child: Icon(Icons.camera),
//         backgroundColor: Colors.blue[500],
//       ),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.,
//     );
//   }
// }


//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }
//
// class _MyAppState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: const Text('Border example app'),
//         ),
//         body: Center(
//           child: new GridView.count(
//             crossAxisCount: 3,
//             children: [
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.all(Radius.elliptical(10.0, 20.0)),
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.yellow,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0)),
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0)),
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.amber,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 margin: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.brown,
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(20.0)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


