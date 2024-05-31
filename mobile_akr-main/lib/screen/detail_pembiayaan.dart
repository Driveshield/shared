
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/component/lengkungan.dart';
import 'package:mobile_akr/screen/testinglist2.dart';
import 'package:mobile_akr/widget/widget.dart';

class DetailPBiayaan extends StatefulWidget {

  final String titlescreen;
  final String pokok;
  final String margin;
  final String jangwaktu;
  final String status;

  const DetailPBiayaan({
    Key? key,
    required this.titlescreen,
    required this.pokok,
    required this.margin,
    required this.jangwaktu,
    required this.status,
  }) : super(key: key);

  @override
  State<DetailPBiayaan> createState() => _DetailPBiayaanState();
}

class _DetailPBiayaanState extends State<DetailPBiayaan> {

  @override
  Widget build(BuildContext context) {
    // return Backdrop1(titlescreen: "my saldo",);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: HexColor("#755ddb"),
      // backgroundColor: HexColor("#CDC3FF"),
      appBar: AppBar(

        // backgroundColor: HexColor("#CDC3FF"),
        backgroundColor: HexColor("#755ddb"),
        // color: HexColor("#755ddb"),
        // color: HexColor("#CDC3FF"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white, ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Pembiayaan Ke-" + widget.titlescreen,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Poppins-Bold',
          ),
        ),
        shadowColor: Colors.transparent,
        centerTitle: true,

      ),
      body: SizedBox(
        height: size.height * 0.9,
        // color: Colors.green,
        child: Stack(
          children: [

            AllnewLstview(namaData: "detail_pembiayaan"),
            // AllSuperstar(namaData: "allpembiayaan"),

            ClipPath(
              clipper: CustomShape1(),
              child: Container(
                height: size.height * 0.185,
                // height: 100, //150
                // color: Colors.red,
                // color: HexColor("#CDC3FF"),
                color: HexColor("#755ddb"),
                //  color: HexColor("#755ddb")
              ),
            ),

            Positioned(
              left: 8.0,
              // top: 0.0,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                width: size.width * 0.96,
                // height: 90,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  // color: HexColor("#755ddb"),
                  borderRadius: BorderRadius.circular(15.0),
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
                          widget.pokok,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                      ],
                    ),

                    SizedBox( height: 5,),

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
                          widget.margin,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                      ],
                    ),

                    SizedBox( height: 5,),
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
                          widget.jangwaktu,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox( height: 5,),
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
                          widget.status,
                          style: const TextStyle(
                            color: Colors.black,
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

            // Positioned(
            //   child: Center(
            //     child: Card(
            //       // color: HexColor("#CDC3FF"),
            //       // color: HexColor("#e3e3e3"),
            //       // color: HexColor("#755ddb"),
            //       color: Colors.orangeAccent,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //       child: Container(
            //         padding: EdgeInsets.all(10),
            //         width: size.width * 0.85,
            //         height: size.height* 0.50,
            //         decoration: const BoxDecoration(
            //           // color: Colors.purple,
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Row(
            //               mainAxisAlignment:
            //               MainAxisAlignment.spaceBetween,
            //               children: [
            //                 const Text(
            //                   "Pokok :",
            //                   style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                     // fontFamily: 'Poppins-Bold',
            //                   ),
            //                 ),
            //                 Text(
            //                   widget.pokok,
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                     fontFamily: 'Poppins-Bold',
            //                   ),
            //                 ),
            //               ],
            //             ),
            //
            //             SizedBox( height: 5,),
            //
            //             Row(
            //               mainAxisAlignment:
            //               MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   "Margin :",
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                   ),
            //                 ),
            //                 Text(
            //                   widget.margin,
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                     fontFamily: 'Poppins-Bold',
            //                   ),
            //                 ),
            //               ],
            //             ),
            //
            //             SizedBox( height: 5,),
            //             Row(
            //               mainAxisAlignment:
            //               MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   "Jangka Waktu :",
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                   ),
            //                 ),
            //                 Text(
            //                   widget.jangwaktu,
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                     fontFamily: 'Poppins-Bold',
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox( height: 5,),
            //             Row(
            //               mainAxisAlignment:
            //               MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   "Status:",
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                   ),
            //                 ),
            //                 Text(
            //                   widget.status,
            //                   style: const TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 15.0,
            //                     fontFamily: 'Poppins-Bold',
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            



          ],
        ),
      ),




      // ),
    );
  }
}
