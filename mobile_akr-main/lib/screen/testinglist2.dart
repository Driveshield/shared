import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

// import 'dart:async';
import 'dart:convert';

import 'package:mobile_akr/screen/screen.dart';

class AllSuperstar extends StatefulWidget {
  late final String namaData;

  AllSuperstar({
    required this.namaData,
  });

  @override
  State<AllSuperstar> createState() => _AllSuperstarState();
}

class _AllSuperstarState extends State<AllSuperstar> {
  late var fungsi;

  var top = 0.0;
  var bottom = 0.0;
  Color switchColor = Colors.black;

  getPembiayaan() async {
    var response = await http.post(
      Uri.parse("https://akr.sirkah.id/api/m_saldo_pembiayaan"),
      body: {
        // "cif_no" :  "500000000008521",
        "cif_no": "500000000007619",
      },
    );
    return jsonDecode(response.body);
  }

  getSimpanan() async {
    // var response =  await http.get(
    var response = await http.post(
      // "https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian"
      // Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian"),
      Uri.parse("https://akr.sirkah.id/api/m_saldo_tabungan"),
      body: {
        // "cif_no" :  "500000000007619",
        "cif_no": "500000000008521",

        // "name": name,
        // "job": job,
      },
    );
    return jsonDecode(response.body);
  }

  getDetailSimpanan() async {
    var response = await http.post(
      Uri.parse("http://128.199.255.145/api/m_statement_tabungan"),
      body: {
        "product_name": fungsi,
      },
    );
    return jsonDecode(response.body);
  }

  // nama = getSimpanan();

  // if ( == 'allsimpanan') {
  // bottom = 0.0;
  // top = 0.0;
  // nama = getSimpanan();
  // }
  // // else if (widget.namaData == "detail_simpanan") {
  // // bottom = 250.0;
  // // top = 30.0;
  // // data = json.decode(response)['detail_simpanan'];
  // // }
  // else if (widget.namaData == 'allpembiayaan') {
  // bottom = 0.0;
  // top = 0.0;
  // nama = getPembiayaan();
  // }
  // // else if (widget.namaData == 'detail_pembiayaan') {
  // // bottom = 250.0;
  // // // top = 0.0;
  // // top = 150.0;
  // // data = json.decode(response)['detail_pembiayaan'];
  // // }

  Widget _buildListView() {
    if (widget.namaData == 'allsimpanan') {
      bottom = 0.0;
      top = 0.0;
      fungsi = getSimpanan();
    } else if (widget.namaData == 'allpembiayaan') {
      bottom = 0.0;
      top = 0.0;
      fungsi = getPembiayaan();
    } else if (widget.namaData == "detail_simpanan") {
      bottom = 250.0;
      top = 30.0;
      fungsi = getSimpanan();
      // fungsi = getDetailSimpanan();
    }

    return Expanded(
      child: FutureBuilder(
        // future: getSimpanan(),
        future: fungsi,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data);
            // var listSeafood =
            // snapshot.data["product_name"];
            // Text(snapshot.data["product_name"]);

            // snapshot.data['meals'];
            // tampilkan dvarata

            return ListView.builder(
                // scrollDirection: Axis.vertical,
                // itemCount: listSeafood.length,
                itemCount: snapshot.data.length,
                // itemBuilder: (context, index) {
                itemBuilder: (BuildContext context, int index) {
                  var datalist;
                  // InkWell datalist;

                  if (widget.namaData == 'allsimpanan') {
                    datalist = InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          // return DetailScreen(place: place);
                          return DetailSimp(
                            detitlescreen: snapshot.data[index]["product_name"],
                          );
                        }));
                      },
                      child: Card(
                        color: Colors.purple,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.deepPurpleAccent, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(

                              // color:Colors.amber,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      snapshot.data[index]["product_name"],
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      // snapshot.data[index]["product_name"],
                                      "nominal terakhir",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 14.0,
                                        fontFamily: 'Poppins-Bold',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (widget.namaData == 'allpembiayaan') {
                    if (snapshot.data[index]["status"] == "Lunas") {
                      switchColor = Colors.green;
                    } else {
                      switchColor = Colors.red;
                    }
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
                                  "Pembiayaan Ke-" +
                                      snapshot.data[index]["pembiayaan_ke"],
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
                                      titlescreen: snapshot.data[index]
                                          ["pembiayaan_ke"],
                                      pokok: snapshot.data[index]["pokok"],
                                      margin: snapshot.data[index]["margin"],
                                      jangwaktu: snapshot.data[index]
                                          ["jangka_waktu"],
                                      status: snapshot.data[index]["status"],
                                    );
                                  }));
                                },
                                child: Container(
                                  padding:
                                      EdgeInsets.only(top: 30.0, bottom: 10),
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
                                    SizedBox(
                                      height: 10,
                                    ),
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
                                    SizedBox(
                                      height: 10,
                                    ),
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
                                          snapshot.data[index]["jangka_waktu"],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontFamily: 'Poppins-Bold',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
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
                                          style: TextStyle(
                                            color: switchColor,
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
                  }

                  return datalist;

                  // return ListTile(
                  //   contentPadding: EdgeInsets.all(1),
                  //   // leading: Image.network(listSeafood[index]['strMealThumb']),
                  //   // title: Text(listSeafood[index]['strMeal']),
                  //   // title: Text(listSeafood[index]['product_name']),
                  //   title: Text(snapshot.data[index]["product_name"]),
                  //   // title: snapshot.data[index]["product_name"],
                  // );
                });
          }

          // }
          else {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.deepPurpleAccent,
            ));
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildListView();

    // return Expanded(
    // child: FutureBuilder(
    //   future: getSimpanan(),
    //   builder: (BuildContext context, AsyncSnapshot snapshot) {
    //
    //     if (snapshot.hasData) {
    //       // print(snapshot.data);
    //       // var listSeafood =
    //       // snapshot.data["product_name"];
    //       // Text(snapshot.data["product_name"]);
    //
    //       // snapshot.data['meals'];
    //       // tampilkan dvarata
    //
    //         return ListView.builder(
    //           // scrollDirection: Axis.vertical,
    //           // itemCount: listSeafood.length,
    //             itemCount: snapshot.data.length,
    //             // itemBuilder: (context, index) {
    //             itemBuilder: (BuildContext context, int index) {
    //               // var datalist;
    //               InkWell datalist;
    //
    //
    //               datalist = InkWell(
    //
    //                 onTap: () {
    //                   Navigator.push(context,
    //                       MaterialPageRoute(builder: (context) {
    //                         // return DetailScreen(place: place);
    //                         return DetailSimp(
    //                           detitlescreen: snapshot
    //                               .data[index]["product_name"],
    //                         );
    //                       }));
    //                 },
    //
    //                 child: Card(
    //                   shape: RoundedRectangleBorder(
    //                     side: BorderSide(
    //                         color: Colors.deepPurpleAccent, width: 2),
    //                     borderRadius: BorderRadius.circular(15),
    //                   ),
    //                   child: Row(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       Padding(
    //                         padding: const EdgeInsets.all(8.0),
    //                         child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: <Widget>[
    //                             Text(
    //                               snapshot.data[index]["product_name"],
    //                               style: const TextStyle(
    //                                 fontSize: 16.0,
    //                                 color: Colors.deepPurple,
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 20,
    //                             ),
    //                             Text(
    //                               // snapshot.data[index]["product_name"],
    //                               "nominal terakhir",
    //                               style: TextStyle(
    //                                 color: Colors.purple,
    //                                 fontSize: 14.0,
    //                                 fontFamily: 'Poppins-Bold',
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //
    //                       // Expanded(
    //                       //   flex: 1,
    //                       //   child: Image.asset(place.imageAsset),
    //                       // ),
    //                     ],
    //                   ),
    //                 ),
    //               );
    //
    //               return datalist;
    //
    //
    //               // return ListTile(
    //               //   contentPadding: EdgeInsets.all(1),
    //               //   // leading: Image.network(listSeafood[index]['strMealThumb']),
    //               //   // title: Text(listSeafood[index]['strMeal']),
    //               //   // title: Text(listSeafood[index]['product_name']),
    //               //   title: Text(snapshot.data[index]["product_name"]),
    //               //   // title: snapshot.data[index]["product_name"],
    //               // );
    //
    //
    //             }
    //         );
    //       // }
    //
    //
    //     }
    //     else {
    //       return Center (
    //           child: CircularProgressIndicator(color: Colors.deepPurpleAccent, )
    //       );
    //     }
    //   },
    // ),
    // );

    //terakhir baris

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Vegetarian"),
    //   ),
    //   body: FutureBuilder(
    //     future: getSeafood(),
    //     builder: (context, AsyncSnapshot snapshot) {
    //       if (snapshot.hasData) {
    //         print(snapshot.data);
    //         var listSeafood = snapshot.data['meals'];
    //         // tampilkan dvarata
    //         return ListView.builder(
    //             itemCount: listSeafood.length,
    //             itemBuilder: (context, index) {
    //               return ListTile(
    //                 contentPadding: EdgeInsets.all(8),
    //                 leading: Image.network(listSeafood[index]['strMealThumb']),
    //                 title: Text(listSeafood[index]['strMeal']),
    //               );
    //             }
    //         );
    //       } else {
    //         return Center (
    //             child: CircularProgressIndicator()
    //         );
    //       }
    //     },
    //   ),
    // );
  }
}
