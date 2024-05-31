import "dart:convert";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:hexcolor/hexcolor.dart';

import 'package:mobile_akr/model/produk_saldo.dart';
import 'package:mobile_akr/screen/screen.dart';

// class Bodylist extends StatefulWidget {
//   final String nama;
//   final String jumlah;
//
//   const Bodylist({required this.nama, required this.jumlah});
//
//   @override
//   State<Bodylist> createState() => _BodylistState();
// }
//
// class _BodylistState extends State<Bodylist> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) {
//           // return DetailScreen(place: place);
//           return DetailSimp(
//             detitlescreen: widget.nama,
//           );
//         }));
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(
//           side: BorderSide(color: Colors.deepPurpleAccent, width: 2),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // Container(
//             //   color: Colors.red,
//             //   child: Text(
//             //     widget.nama,
//             //     style: const TextStyle(
//             //       fontSize: 16.0,
//             //       color: Colors.deepPurple,
//             //     ),
//             //   ),
//             //
//             // ),
//             //
//             // Container(
//             //   color: Colors.blue,
//             //   child: Text(
//             //     widget.jumlah,
//             //     style: const TextStyle(
//             //       fontSize: 16.0,
//             //       color: Colors.deepPurple,
//             //     ),
//             //   ),
//             //
//             // ),
//
//             Expanded(
//               // flex: 9,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       widget.nama,
//                       style: const TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.deepPurple,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       widget.jumlah,
//                       style: TextStyle(
//                         color: Colors.purple,
//                         fontSize: 14.0,
//                         fontFamily: 'Poppins-Bold',
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             // Expanded(
//             //   flex: 1,
//             //   child: Image.asset(place.imageAsset),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class AllnewLstview extends StatefulWidget {
  final String namaData;

  const AllnewLstview({
    required this.namaData,
  });

  @override
  State<AllnewLstview> createState() => _AllnewLstviewState();
}

class _AllnewLstviewState extends State<AllnewLstview> {

  var top = 0.0;
  var bottom = 0.0;

  Future<List<dynamic>> readJson() async {
    final String response = await rootBundle.loadString('lib/model/dummydata.json');
    // print(json.decode(response));
    // return json.decode(response)['sukarela'];

    var data;
    if (widget.namaData == 'sukarela') {
      bottom = 0.0;
      top = 0.0;
      data = json.decode(response)['sukarela'];
    } else if (widget.namaData == "detail_simpanan") {
      bottom = 250.0;
      top = 30.0;
      data = json.decode(response)['detail_simpanan'];
    } else if (widget.namaData == 'pembiayaan') {
      bottom = 0.0;
      top = 0.0;
      data = json.decode(response)['pembiayaan'];
    } else if (widget.namaData == 'detail_pembiayaan') {
      bottom = 250.0;
      // top = 0.0;
      top = 150.0;
      data = json.decode(response)['detail_pembiayaan'];
    }
    return data;
  }

  Widget _buildListView() {
    return Expanded(
      child: FutureBuilder<List<dynamic>>(
        future: readJson(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
              padding: EdgeInsets.only(top: top, bottom: bottom),
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                var datalist;

                if (widget.namaData == 'sukarela') {
                  datalist = InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        // return DetailScreen(place: place);
                        return DetailSimp(
                          detitlescreen: snapshot.data[index]["nama"],
                        );
                      }));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  snapshot.data[index]["nama"],
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  snapshot.data[index]["jumlah"],
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 14.0,
                                    fontFamily: 'Poppins-Bold',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Expanded(
                          //   flex: 1,
                          //   child: Image.asset(place.imageAsset),
                          // ),
                        ],
                      ),
                    ),
                  );

                } else if (widget.namaData == "detail_simpanan") {
                  Size size = MediaQuery.of(context).size;
                  datalist = Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // ini kotak pembaggi di simpanan detail
                        child: Column(
                          children: [
                            Container(
                              // padding: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10)
                              padding: EdgeInsets.all(10),
                              width: size.width * 0.97,
                              // height: 90,
                              decoration: const BoxDecoration(
                                // color: HexColor("#CDC3FF"),
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Tanggal",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["tanggal"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                              padding: EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black12,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Jumlah         :",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["jumlah"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black26,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Saldo            :",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["saldo"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              // height: 90,
                              decoration: const BoxDecoration(
                                // color: HexColor("#CDC3FF"),
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Keterangan  :",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["ket"],
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else if (widget.namaData == 'pembiayaan') {
                  Size size = MediaQuery.of(context).size;

                  datalist = Container(
                    // padding: EdgeInsets.all(10),
                    // color: Colors.black,
                    width: size.width,
                    height: 220,
                    // height: size.height * 0.3,
                    // height: size.height * 0.4,
                    // decoration: BoxDecoration(
                    //   // color: Colors.black,
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),
                    child: Stack(
                      children: [


                        Positioned(
                          left: 0.0,
                          top: 0.0,
                          child: Card(
                            color: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: size.width * 0.952,
                              height: 60,
                              decoration: const BoxDecoration(
                                  // color: Colors.purple,
                                  ),
                              child: Text(
                                "Pembiayaan Ke-" + snapshot.data[index]["ke"],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontFamily: 'Poppins-Bold',
                                ),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          left: 0.0,
                          top: 150.0,
                          child: Card(
                            color: HexColor("#CDC3FF"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return DetailPBiayaan(
                                        titlescreen: snapshot.data[index]["ke"],
                                        pokok: snapshot.data[index]["pokok"],
                                        margin: snapshot.data[index]["margin"],
                                        jangwaktu: snapshot.data[index]["jangwaktu"],
                                        status: snapshot.data[index]["status"],
                                      );
                                    }));
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 30.0, bottom: 10),
                                width: size.width * 0.952,
                                // height: 60,
                                decoration: const BoxDecoration(
                                  // color: Colors.purple,
                                ),
                                child: Text(
                                  "Detail Angsuran",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontFamily: 'Poppins-Bold',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),




                        Positioned(
                          left: 0.0,
                          top: 40.0,
                          child: Card(
                            // color: HexColor("#CDC3FF"),
                            color: HexColor("#e3e3e3"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: size.width * 0.952,
                              // height: 60,
                              decoration: const BoxDecoration(
                                  // color: Colors.purple,
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Pokok :",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          // fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                      Text(
                                        snapshot.data[index]["pokok"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox( height: 10,),

                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Margin :",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      Text(
                                       snapshot.data[index]["margin"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox( height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Jangka Waktu :",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data[index]["jangwaktu"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox( height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Status:",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data[index]["status"],
                                        style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 15.0,
                                          fontFamily: 'Poppins-Bold',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (widget.namaData == "detail_pembiayaan") {
                  Size size = MediaQuery.of(context).size;
                  datalist = Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // ini kotak pembaggi di simpanan detail
                        child: Column(
                          children: [
                            Container(
                              // padding: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10)
                              padding: EdgeInsets.all(10),
                              width: size.width * 0.97,
                              // height: 90,
                              decoration: const BoxDecoration(
                                // color: HexColor("#CDC3FF"),
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                ),
                              ),
                              child: Text(
                                "Angsuran Ke-"+snapshot.data[index]["ke"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                              padding: EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black12,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "No Rekening  :",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["NoRek"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black26,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Saldo pokok:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["saldoPok"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black12,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Saldo Margin:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["saldoMar"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black26,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Saldo Simpanan:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["saldoSim"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              color: Colors.black12,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Angsuran:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["Angsuran"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),



                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.97,
                              // height: 90,
                              decoration: const BoxDecoration(
                                // color: HexColor("#CDC3FF"),
                                color: Colors.white60,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(6),
                                    // color: Colors.orange,
                                    width: size.width * 0.29,
                                    child: const Text(
                                      "Tanggal Bayar:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]["tglBayar"],
                                    style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }

                return datalist;
              });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildListView();
  }
}

class Isibodi extends StatefulWidget {
  // final String namaData;
  final Widget etwiget;

  // //
  // //
  // //
  // //
  // //
  const Isibodi({
    required this.etwiget,
    // required this.namaData,
    // required this.childku
  });

  @override
  State<Isibodi> createState() => _IsibodiState();
}

class _IsibodiState extends State<Isibodi> {
  @override
  Widget build(BuildContext context) {
    return widget.etwiget;

    // return Container(
    //   color: Colors.black,
    //   width: 10,
    //   height: 90,
    //   child: Text("wdwadawdw"),
    // );
  }
}

//
// class ListTabungan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         final TourismPlace place = tourismPlaceList[index];
//         return InkWell(
//           onTap: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) {
//               // return DetailScreen(place: place);
//               return DetailSimp(
//                 detitlescreen: place.nama,
//               );
//             }));
//           },
//           child: Card(
//             shape: RoundedRectangleBorder(
//               side: BorderSide(color: Colors.deepPurpleAccent, width: 2),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             // color: Colors.white,
//             // child: ...
//
//             // color: Colors.deepPurple,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 // Expanded(
//                 //   flex: 1,
//                 //   child: Image.asset(place.imageAsset),
//                 // ),
//
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           place.nama,
//                           style: const TextStyle(
//                             fontSize: 16.0,
//                             color: Colors.deepPurple,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           place.jumlah,
//                           style: TextStyle(
//                             color: Colors.purple,
//                             fontSize: 14.0,
//                             fontFamily: 'Poppins-Bold',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 // Expanded(
//                 //   flex: 1,
//                 //   child: Image.asset(place.imageAsset),
//                 // ),
//               ],
//             ),
//           ),
//         );
//       },
//       itemCount: tourismPlaceList.length,
//     );
//   }
// }

class ListDetailsimp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: EdgeInsets.only(top: 30, bottom: 250),
      itemBuilder: (context, index) {
        final ValDetail data2 = valDetailList[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     // return DetailScreen(place: place);
            //     return DetailSimp(detitlescreen: data2.nama,);
            //   }));
            // },

            // ini kotak di simpanan detail
            child: Card(
              shape: RoundedRectangleBorder(
                // side: BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              // ini kotak pembaggi di simpanan detail
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10)
                    padding: EdgeInsets.all(10),
                    width: size.width * 0.97,
                    // height: 90,
                    decoration: const BoxDecoration(
                      // color: HexColor("#CDC3FF"),
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Tanggal",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.tanggal,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    padding: EdgeInsets.all(10),
                    width: size.width * 0.97,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Jumlah         :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.jumlah,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width * 0.97,
                    color: Colors.black26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Saldo            :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.saldo,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width * 0.97,
                    // height: 90,
                    decoration: const BoxDecoration(
                      // color: HexColor("#CDC3FF"),
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Keterangan  :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.ket,
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: valDetailList.length,
    );
  }
}

class jajal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: EdgeInsets.only(top: 30, bottom: 250),
      itemBuilder: (context, index) {
        final ValDetail data2 = valDetailList[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     // return DetailScreen(place: place);
            //     return DetailSimp(detitlescreen: data2.nama,);
            //   }));
            // },

            // ini kotak di simpanan detail
            child: Card(
              shape: RoundedRectangleBorder(
                // side: BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              // ini kotak pembaggi di simpanan detail
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10)
                    padding: EdgeInsets.all(10),
                    width: size.width * 0.97,
                    // height: 90,
                    decoration: const BoxDecoration(
                      // color: HexColor("#CDC3FF"),
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Tanggal",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.tanggal,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    padding: EdgeInsets.all(10),
                    width: size.width * 0.97,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Jumlah         :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.jumlah,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width * 0.97,
                    color: Colors.black26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Saldo            :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.saldo,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width * 0.97,
                    // height: 90,
                    decoration: const BoxDecoration(
                      // color: HexColor("#CDC3FF"),
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // padding: EdgeInsets.all(6),
                          // color: Colors.orange,
                          width: size.width * 0.29,
                          child: const Text(
                            "Keterangan  :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          data2.ket,
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: valDetailList.length,
    );
  }
}
