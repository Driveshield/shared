import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:flutter/rendering.dart';

// import 'package:mobile_akr/screen/saldo_anggota.dart';

// import 'package:mobile_akr/screen/saldo_tabungan.dart';
import 'package:mobile_akr/widget/widget.dart';
import 'package:mobile_akr/screen/screen.dart';

import 'package:mobile_akr/model/api.dart';
import 'package:provider/provider.dart';

//
// class Constantsok {
//   static const String test = 'test1';
//   static const String test2 = 'test2';
//   static const String test3 = 'test3';
//
//   static const List<String> choices = <String>[
//     test,
//     test2,
//     test3,
//   ];
// }

class Home extends StatefulWidget {

  final String nomorID;
  // final String isiApi

  Home({
    Key? key,
    required this.nomorID,
  }) : super(key: key);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {




  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);
    Size size = MediaQuery.of(context).size;

    var printT = size.height;
    var printW = size.width;
    var printR = size.aspectRatio;

    // dataProvider.connectAPI("500000000007619");
    dataProvider.connectAPI(widget.nomorID);

    // final head = Column(
    //   children: const [
    //     SafeArea(
    //         child: Center(
    //       child: Image(
    //         image: AssetImage("assets/logos/akr-1.png"),
    //       ),
    //     )),
    //     Image(
    //       image: AssetImage("assets/logos/akr-1.png"),
    //       // image: AssetImage("assets/images/ilustrasi.png"),
    //     ),
    //     Image(
    //       image: AssetImage("assets/logos/akr-1.png"),
    //       // image: AssetImage("assets/images/ilustrasi.png"),
    //     )
    //   ],
    // );

    return Scaffold(
      backgroundColor: HexColor("#CDC3FF"),
      // backgroundColor: Colors.white,
      // backgroundColor: HexColor("#CDC3FF"),
      // appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.bottomCenter,
          // color: HexColor("#CDC3FF"),
          // color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //
              //
              //
              //
              //         // sesi 2
              //       SizedBox(width: 60),
              //
              //       Column(
              //         children: [
              //           Image.asset("assets/logos/akr-1.png"),
              //
              //           const Text(
              //             "Koperasi Syariah",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 17,
              //             ),
              //           ),
              //
              //   ]
              //           ),
              //
              //
              //       // InkWell(
              //         Container(
              //
              //
              //           decoration: BoxDecoration(
              //
              //             color: Colors.green
              //
              //           ),
              //           child: IconButton(
              //               icon: Icon(
              //                 Icons.arrow_back,
              //                 color: Colors.white,
              //               ),
              //               onPressed: () {
              //                 Navigator.pop(context);
              //               },
              //             ),
              //
              //         ),
              //
              //
              //       // ),
              //
              //       // CircleAvatar(
              //       //   backgroundColor: Colors.grey,
              //       //   child: IconButton(
              //       //     icon: Icon(
              //       //       Icons.arrow_back,
              //       //       color: Colors.white,
              //       //     ),
              //       //     onPressed: () {
              //       //       Navigator.pop(context);
              //       //     },
              //       //   ),
              //       // ),
              //
              //       // IconButton(
              //       //   icon: Icon(
              //       //     Icons.arrow_back,
              //       //     color: Colors.white,
              //       //   ),
              //       //   onPressed: () {
              //       //     Navigator.pop(context);
              //       //   },
              //       // ),
              //
              //       // TextButton(
              //       //   onPressed: () {},
              //       //   // child: Text("Edit Profil"),
              //       //   child: Container(
              //       //     // padding: const EdgeInsets.all(5.0),
              //       //     // decoration: BoxDecoration(
              //       //     //   // color: HexColor("#755ddb"),
              //       //     //   color: Colors.deepOrange,
              //       //     //   borderRadius: BorderRadius.circular(18.0),
              //       //     //   boxShadow: [boxShadow],
              //       //     // ),
              //       //     child: const Text(
              //       //       "Edit Profil",
              //       //       textAlign: TextAlign.center,
              //       //       style: TextStyle(
              //       //         color: Colors.white,
              //       //         fontSize: 11,
              //       //       ),
              //       //     ),
              //       //   ),
              //       // ),
              //
              //
              //     ],
              //   ),
              // ),
              // endsesi2

              // const SafeArea(
              //   child: Image(
              //     image: AssetImage("assets/logos/akr-1.png"),
              //   ),
              // ),
              // const Text(
              //   "Koperasi Syariah",
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 17,
              //   ),
              // ),



              Padding(
          padding: EdgeInsets.only(top: 10),

                  child: Image.asset("assets/logos/akr-1.png")),



              const Text(
                "Koperasi Syariah",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              Text(
                "Abdi Kertha Raharja ",
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              // Text(
              //   // "Abdi Kertha Raharja ",
              //   "tinggi:$printT ",
              //   style: TextStyle(
              //     fontFamily: 'Poppins-Bold',
              //     color: Colors.black,
              //     fontSize: 20,
              //   ),
              // ),
              // Text(
              //   // "Abdi Kertha Raharja ",
              //   "lebar:$printW ",
              //   style: TextStyle(
              //     fontFamily: 'Poppins-Bold',
              //     color: Colors.black,
              //     fontSize: 20,
              //   ),
              // ),
              // Text(
              //   // "Abdi Kertha Raharja ",
              //   "Rasio:$printR ",
              //   style: TextStyle(
              //     fontFamily: 'Poppins-Bold',
              //     color: Colors.black,
              //     fontSize: 20,
              //   ),
              // ),
              Container(
                // margin: EdgeInsets.only(right: 12.5, bottom: 25.0),
                  width: size.width * 0.72,
                  height: size.height * 0.20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/ilustrasi.png"), fit: BoxFit.fill)

                ),
              ),

              // Container(
              //   width: size.width * 0.99,
              //   height: size.height * 0.22,
              //   child: const Image(
              //     image: AssetImage("assets/images/ilustrasi.png"),
              //   ),
              // ),

              // ini kotak putih bawah
              Flexible(
                child: Container(
                  // width: 30,
                  // height: 495,
                  // height: size.height / 0.01,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                    // borderRadius: BorderRadius.circular(30.0),
                  ),

                  child: Column(
                    children: [
                      //profil nama edit
                      Padding(
                        // padding: EdgeInsets.all(20),
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 10.0, right: 10.0, bottom: 0.0),

                        child: Card(
                          shadowColor: Colors.transparent,
                          // color: Colors.orangeAccent,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 0,
                                child: Image.asset(
                                  "assets/images/big-avatar.png",
                                  width: 55,
                                  height: 55,
                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Padding(
                                  // padding: const EdgeInsets.all(0.0),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Assalamualaikum,",
                                        style: TextStyle(fontSize: 13.0),
                                      ),

                                      // SizedBox(
                                      //   height: 5,
                                      // ),

                                      Consumer<HttpProvider>(
                                        builder: (context, value, child) => Text(
                                          (value.data["nama"] == null)
                                              ? "Unknown": "${value.data["nama"]}",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),

                                      // Container(
                                      //   child: Consumer<HttpProvider>(
                                      //     builder: (context, value, child) => Text(
                                      //       (value.data["nama"] == null)
                                      //           ? "Unknown"
                                      //           : "${value.data["nama"]}",
                                      //       style: TextStyle(fontSize: 20),
                                      //     ),
                                      //   ),
                                      // ),



                                      // Text(
                                      //   "H.Sapri joyodiningrat",
                                      //   style: TextStyle(
                                      //     fontSize: 14.0,
                                      //     fontFamily: 'Poppins-Bold',
                                      //   ),
                                      // ),




                                      Text(
                                        // "500000000007564",
                                        widget.nomorID,
                                        style: TextStyle(fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // ini style 2 tombol
                              // Expanded(
                              //
                              //   flex: 0,
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.end,
                              //     mainAxisAlignment: MainAxisAlignment.end,
                              //     children: <Widget>[
                              //
                              //       InkWell(
                              //       onTap: (){},
                              //
                              //         child: Container(
                              //           padding: const EdgeInsets.all(5.0),
                              //           decoration: BoxDecoration(
                              //             // color: HexColor("#755ddb"),
                              //             color: Colors.deepOrange,
                              //             borderRadius: BorderRadius.circular(18.0),
                              //             boxShadow: [boxShadow],
                              //           ),
                              //           child: const Text(
                              //             "Edit Profil",
                              //             textAlign: TextAlign.center,
                              //             style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 11,
                              //             ),
                              //           ),
                              //         ),
                              //       ),

                              // SizedBox(height: 5),

                              // InkWell(
                              //   onTap: (){},
                              //
                              //   child: Container(
                              //     padding: const EdgeInsets.all(5.0),
                              //     decoration: BoxDecoration(
                              //       // color: HexColor("#755ddb"),
                              //       color: Colors.red,
                              //       borderRadius: BorderRadius.circular(18.0),
                              //       boxShadow: [boxShadow],
                              //     ),
                              //
                              //     child: Row(
                              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //       children: <Widget> [
                              //         Icon(Icons.logout,color: HexColor("#ffffff"),size: 14,),
                              //         SizedBox(width: 1),
                              //         Text("log out",style: TextStyle(color: HexColor("#ffffff"),fontSize: 11,),),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              //     ],
                              //   ),
                              // ),
                              // tutupan style 2 tombol

                              Expanded(
                                flex: 0,
                                child: PopupMenuButton<int>(
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 1,
                                      child: Text(
                                        "Pengaturan Akun",
                                      ),
                                    ),
                                    PopupMenuDivider(
                                      height: 0,
                                    ),
                                    PopupMenuItem(
                                      value: 2,
                                      child: Text("Keluar Akun"),
                                    ),
                                  ],
                                  // initialValue: 1,
                                  onCanceled: () {
                                    print("You have canceled the menu.");
                                  },
                                  onSelected: (value) {
                                    if (value == 1) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return Eprofil();
                                        }),
                                      );
                                    } else if (value == 2) {
                                      Navigator.pop(context);
                                    }

                                    // print("value:$value");
                                  },
                                  shape: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.orangeAccent, width: 2),
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  color: Colors.white,
                                  // child: Padding(
                                  //   padding: EdgeInsets.symmetric(
                                  //       horizontal: 10, vertical: 20),
                                  //   child: Text("Menu"),
                                  // ),
                                  // icon: Icon(Icons.list),
                                ),
                              ),

                              // ini style 1 tombol
                              //                   Expanded(
                              //                     flex: 0,
                              //                     // child: GestureDetector(
                              //                     //   child: Container(
                              //                     //     padding: const EdgeInsets.all(5.0),
                              //                     //     decoration: BoxDecoration(
                              //                     //       // color: HexColor("#755ddb"),
                              //                     //       color: Colors.deepOrange,
                              //                     //       borderRadius: BorderRadius.circular(18.0),
                              //                     //       boxShadow: [boxShadow],
                              //                     //     ),
                              //                     //     child: const Text(
                              //                     //       "Edit Profil",
                              //                     //       textAlign: TextAlign.center,
                              //                     //       style: TextStyle(
                              //                     //         color: Colors.white,
                              //                     //         fontSize: 11,
                              //                     //       ),
                              //                     //     ),
                              //                     //   ),
                              //                     // ),
                              //
                              //                     // child: ButtonCustom(
                              //                     //   colorButton: Colors.deepOrange,
                              //                     //   labelButton: "Edit Profil",
                              //                     //   sizefont: 10.5,
                              //                     //   width: 30,
                              //                     //   height: 20,
                              //                     // ),
                              //
                              //
                              //                      child: PopupMenuButton  (
                              //
                              //
                              //                        // child: Padding(
                              //                        //   padding: EdgeInsets.symmetric(
                              //                        //       horizontal: 10,
                              //                        //       vertical: 20
                              //                        //   ),
                              //                        //   child:Text("Menu"),
                              //                        // ),
                              //                        // child:Text("Menu"),
                              //
                              //
                              //                        enabled: true,
                              //                          // color: Colors.orangeAccent,
                              //                          // elevation: 20,
                              //                          // onSelected: choiceAction,
                              //                          // icon: Icon(Icons.more_horiz),
                              //                          onSelected: (value) {
                              //                            setState(() {
                              //                              // _value  = value;
                              //                            });
                              //                          },
                              //
                              //
                              //                          itemBuilder:(BuildContext context) => [
                              //                              // return Constantsok.choices.map((String pilih){
                              //                              //   return PopupMenuButton <String>(
                              //                              //     initialValue:pilih,
                              //                              //     child: Text(pilih),
                              //                              //
                              //                              //   );
                              //                              // }).toList();
                              //
                              //
                              //                            //
                              //                            //   child: GestureDetector(
                              //                            //     onTap: (){
                              //                            //       Navigator.push(
                              //                            //         context,
                              //                            //         MaterialPageRoute(builder: (context) {
                              //                            //           return Eprofil();
                              //                            //         }),
                              //                            //       );
                              //                            //     },
                              //                            //     child: Text("Edit profil"),
                              //                            //   ),
                              //                            // ),
                              //
                              //                            PopupMenuItem(
                              //                              child: Text("edit"),
                              //                              value: 2,
                              //                              onTap: (){ Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) {
                              //     return Eprofil();
                              //   }),
                              // );},
                              //                            ),
                              //
                              //                            PopupMenuItem(
                              //                            child: Text("Log Out"),
                              //                            value: 2,
                              //                            onTap: (){Navigator.pop(context);},
                              //                            ),
                              //
                              //                            PopupMenuItem(
                              //                              child: Text("First"),
                              //                              value: "first",
                              //                            ),
                              //                            PopupMenuItem(
                              //                              child: Text("Second"),
                              //                              value: "Second",
                              //                            ),
                              //
                              //
                              //                          ],
                              //
                              //
                              //
                              //                      )
                              //
                              //
                              //
                              //
                              //                   ),
                              // tutupan style 1 tombol
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        // padding: EdgeInsets.all(20),
                        padding: const EdgeInsets.only(
                            top: 12.0, left: 15.0, right: 15.0, bottom: 0.0),

                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor("#755ddb"),
                            // color: HexColor("#CDC3FF"),
                            // color: Colors.orange,
                            // border: Border.all(color: Theme.of(context).primaryColor),
                            border: Border.all(color: HexColor("#755ddb")),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Card(
                            shadowColor: Colors.transparent,
                            color: HexColor("#755ddb"),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Saldo Sukarela",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 5,
                                        // ),

                                      Consumer<HttpProvider>(
                                        builder: (context, value, child) => Text(
                                          (value.data["tabungan_sukarela"] == null)
                                              ? "Unknown"
                                              : "${value.data["tabungan_sukarela"]}",
                                          style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.5,
                                                fontFamily: 'Poppins-Bold',
                                              ),
                                        ),
                                      ),



                                        // Text(
                                        //   "Rp. 399.999.999.000",
                                        //   style: TextStyle(
                                        //     color: Colors.white,
                                        //     fontSize: 14.0,
                                        //     fontFamily: 'Poppins-Bold',
                                        //   ),
                                        // ),




                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Padding(
                      //   // padding: EdgeInsets.all(20),
                      //   padding: EdgeInsets.only(
                      //       top: 15.0, left: 10.0, right: 10.0, bottom: 0.0),
                      //
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       color: HexColor("#755ddb"),
                      //       // color: HexColor("#CDC3FF"),
                      //       // color: Colors.orange,
                      //       // border: Border.all(color: Theme.of(context).primaryColor),
                      //       border: Border.all(color: HexColor("#755ddb")),
                      //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      //     ),
                      //     child: Card(
                      //       shadowColor: Colors.transparent,
                      //       color: HexColor("#755ddb"),
                      //       child: Row(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: <Widget>[
                      //           Expanded(
                      //             flex: 1,
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(6.0),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: <Widget>[
                      //                   Text(
                      //                     "Saldo Sukarela",
                      //                     style: TextStyle(
                      //                       fontSize: 13.0,
                      //                       color: Colors.white,
                      //                     ),
                      //                   ),
                      //                   // SizedBox(
                      //                   //   height: 5,
                      //                   // ),
                      //                   Text(
                      //                     "Rp. 399.999.999.000",
                      //                     style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontSize: 14.0,
                      //                       fontFamily: 'Poppins-Bold',
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                       Padding(
                        // padding: EdgeInsets.all(20),
                        padding: EdgeInsets.only(
                            top: 7.5, left: 10.0, right: 10.0, bottom: printT * 0.03),

                        child: Text(
                          "Layanan Lembaga",
                          // "size.height",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),

                Flexible (child: Container(
                        // color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Wrap(
                              // spacing: 10.0,
                              // runSpacing: 11.0,



                              spacing: printW * 0.05,
                              // runSpacing: printT * 0.08,
                              runSpacing: printT * 0.05,
                              // runSpacing: 0.0,
                              children: <Widget>[

                                GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) {
                                                    return Simpanan();
                                                  }),
                                                );
                                              },
                                              child: const CardMenu(
                                                fontwarna: Colors.black,
                                                gambarmenu: "assets/logos/wallet.png",
                                                labelmenu: "Saldo Anggota",
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) {
                                                    return Pembiayaan();
                                                  }),
                                                );
                                              },
                                              child: const CardMenu(
                                                fontwarna: Colors.black,
                                                gambarmenu: "assets/logos/pembiayaan.png",
                                                labelmenu: "Saldo Pembiayaan",
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) {
                                                    return Tabungan();
                                                  }),
                                                );
                                              },
                                              child: const CardMenu(
                                                fontwarna: Colors.black,
                                                gambarmenu: "assets/logos/tabungan.png",
                                                labelmenu: "Saldo Tabungan",
                                              ),
                                            ),

                                GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) {
                                                    return Belum_tersedia();
                                                  }),
                                                );
                                              },
                                              child: const CardMenu(
                                                fontwarna: Colors.black,
                                                gambarmenu: "assets/logos/phone.png",
                                                labelmenu: "pulsa",
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // dataProvider.connectAPI("500000000007619");
                                               // widget.nomorID = "500000000007619";
                                              },
                                              child: CardMenu(
                                                fontwarna: Colors.black,
                                                gambarmenu: "assets/logos/idea.png",
                                                labelmenu: "Token Listrik",
                                              ),
                                            ),
                                            GestureDetector(

                                              // onPressed: () {
                                              //   // dataProvider.connectAPI("500000000008521");
                                              //   dataProvider.connectAPI(testvar);
                                              // },

                                              onTap: () {
                                                // dataProvider.connectAPI("500000000008521");
                                                // widget.nomorID = "500000000008521";
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(builder: (context) {
                                                //     return MainScreen();
                                                //   }),
                                                // );
                                              },
                                              child: CardMenu(
                                                fontwarna: Colors.black,
                                                gambarmenu: "assets/logos/add.png",
                                                labelmenu: "Lainnya",
                                              ),
                                            ),

                                // Container(
                                //   color: Colors.yellow,
                                //   height: 100.0,
                                //   width: 100.0,
                                // ),
                                // Container(
                                //   color: Colors.red,
                                //   height: 100.0,
                                //   width: 100.0,
                                // ),
                                // Container(
                                //   color: Colors.white,
                                //   height: 100.0,
                                //   width: 100.0,
                                // ),
                                // Container(
                                //   color: Colors.brown,
                                //   height: 100.0,
                                //   width: 100.0,
                                // ),
                                // Container(
                                //   color: Colors.grey,
                                //   height: 100.0,
                                //   width: 100.0,
                                // ),
                                // Container(
                                //   color: Colors.yellow,
                                //   height: 100.0,
                                //   width: 100.0,
                                // ),




                              ],
                            )
                          ],
                        ),
                      ),)

                      // SizedBox(
                      //   width: size.width,
                      //   height: size.height * 0.20,
                      //
                      //   child: GridView.count(
                      //     crossAxisCount: 1,
                      //     children: <Widget>[
                      //       FlutterLogo(),
                      //       FlutterLogo(),
                      //       FlutterLogo(),
                      //       FlutterLogo(),
                      //     ],
                      //   )
                      //
                      //   // child: GridView(
                      //   //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      //   //   children: <Widget>[
                      //   //     FlutterLogo(),
                      //   //     FlutterLogo(),
                      //   //     FlutterLogo(),
                      //   //     FlutterLogo(),
                      //   //   ],
                      //   // ),
                      // )

                      // Padding(
                      //   // padding: EdgeInsets.all(20),
                      //   padding: const EdgeInsets.only(
                      //       top: 15.0,
                      //       left: 10.0,
                      //       right: 10.0,
                      //       bottom: 50 ,
                      //       // bottom: 2.0
                      //   ),
                      //
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     //crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //         children: [
                      //           GestureDetector(
                      //             onTap: () {
                      //               Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(builder: (context) {
                      //                   return Simpanan();
                      //                 }),
                      //               );
                      //             },
                      //             child: const CardMenu(
                      //               fontwarna: Colors.black,
                      //               gambarmenu: "assets/logos/wallet.png",
                      //               labelmenu: "Saldo Anggota",
                      //             ),
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {
                      //               Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(builder: (context) {
                      //                   return Pembiayaan();
                      //                 }),
                      //               );
                      //             },
                      //             child: const CardMenu(
                      //               fontwarna: Colors.black,
                      //               gambarmenu: "assets/logos/pembiayaan.png",
                      //               labelmenu: "Saldo Pembiayaan",
                      //             ),
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {
                      //               Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(builder: (context) {
                      //                   return Tabungan();
                      //                 }),
                      //               );
                      //             },
                      //             child: const CardMenu(
                      //               fontwarna: Colors.black,
                      //               gambarmenu: "assets/logos/tabungan.png",
                      //               labelmenu: "Saldo Tabungan",
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //         children: [
                      //
                      //         ],
                      //       ),
                      //
                      //       // SizedBox(height: size.height * 0.1,),
                      //     ],
                      //   ),
                      //
                      //   // child: Container(
                      //   //   width: 900,
                      //   //   height: 250,
                      //   //   child: GridView.count(
                      //   //
                      //   //     crossAxisCount: 3,
                      //   //     // crossAxisSpacing: 16,
                      //   //     // mainAxisSpacing: 16,
                      //   //
                      //   //     children: <Widget>[
                      //   //
                      //   //       InkWell(
                      //   //         onTap: (){},
                      //   //
                      //   //         child: const Image(
                      //   //           image: AssetImage("assets/logos/akr-1.png"),
                      //   //         ),
                      //   //
                      //   //
                      //   //       ),
                      //   //       InkWell(
                      //   //         onTap: (){},
                      //   //
                      //   //         child: Image(
                      //   //           image: AssetImage("assets/logos/akr-1.png"),
                      //   //         ),
                      //   //
                      //   //
                      //   //       ),
                      //   //       InkWell(
                      //   //         onTap: (){},
                      //   //
                      //   //         child: Image(
                      //   //           image: AssetImage("assets/logos/akr-1.png"),
                      //   //         ),
                      //   //
                      //   //
                      //   //       ),
                      //   //
                      //   //       // Image(
                      //   //       //   image: AssetImage("assets/logos/akr-1.png"),
                      //   //       // ),
                      //   //       // Image(
                      //   //       //   image: AssetImage("assets/logos/akr-1.png"),
                      //   //       // ),
                      //   //       // Image(
                      //   //       //   image: AssetImage("assets/logos/akr-1.png"),
                      //   //       // ),
                      //   //
                      //   //
                      //   //       // Card(
                      //   //       //   child: Image.asset("assets/logos/akr-1.png"),
                      //   //       //   ),
                      //   //       // Card(
                      //   //       //   child: Image.asset("assets/logos/akr-1.png"),
                      //   //       // ),
                      //   //       // Card(
                      //   //       //   child: Image.asset("assets/logos/akr-1.png"),
                      //   //       // ),
                      //   //
                      //   //     ],
                      //   //
                      //   //   ),
                      //   // ),
                      // ),

                      // Text("Layanan Lembaga")
                    ],
                  ),
                ),
              ),
            ],
          ),

          // child: Text(
          //   'Ayo Belajar Flutter',
          //   style: TextStyle(
          //     fontSize: 20,
          //   ),
          // )
        ),
      ),

      // body: Container(
      //
      //     // margin: EdgeInsets.all(20),
      //     height: 200,
      //     width: 200,
      //     alignment: MainAxisAlignment.center ,
      //     color: Colors.purple,
      //     child: Text(
      //       'Ayo Belajar Flutter',
      //       style: TextStyle(
      //           fontSize: 20,
      //           color: Colors.white
      //       ),
      //     )
      // ),
    );
  }


}

// child: Column(
// children: [
// //profil dan tombol edit
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// // profil
// Container(
// child: Row(
// children: [
// Padding(
// padding: EdgeInsets.all(15.0),
// child: Image(
// width: 50,
// height: 50,
// image:
// AssetImage("assets/images/big-avatar.png")),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Text(
// "Selamat Datang",
// ),
// Text(
// "salim alayidrus",
// textAlign: TextAlign.left,
// style: TextStyle(
// fontFamily: 'Poppins-Bold',
// fontSize: 15.0,
// color: Colors.black,
// ),
// )
// ],
// )
// ],
// )),
//
// TextButton(
// onPressed: (){
//
// },
//
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
// foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
// shape:MaterialStateProperty.all<RoundedRectangleBorder>(
// RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(18.0),
// ),
// )
// ),
//
// child: Container(
// child: Text("Edit Profil"))
// ),
//
// ],
// ),
//
//
// ],
// ),
