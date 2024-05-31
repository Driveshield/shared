import 'dart:convert';

import 'package:mobile_akr/model/http_provider.dart';
import 'package:mobile_akr/screen/testinglist2.dart';
import 'package:mobile_akr/widget/list_produk2.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
// import "package:flutter/src/widgets/async.dart" show AsyncSnapshot, FutureBuilder;




import 'package:mobile_akr/widget/mainstrm_backround1.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/widget.dart';

import 'testinglist.dart';


// class Tabungan extends StatelessWidget{
//
//   const Tabungan({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: HexColor("#755ddb"),
//       body: Content(),
//     );
//   }
// }
//
// class Content extends StatelessWidget{
//   const Content ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Backdrop1(
//       titlescreen: "saldo Tabungan",
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//
//           InkWell(
//             splashColor: Colors.transparent,
//             // onFocusChange: MaterialState.disabled,
//             onTap: (){
//               Navigator.pop(context);
//             },
//             child: const CardMenu(
//               gambarmenu:"assets/logos/tabungan.png",
//               fontwarna: Colors.white,
//               labelmenu:"Saldo Anggota",
//             ),
//           ),
//
//           CardHome(),
//
//           GestureDetector(
//             onTap: (){
//               Navigator.pop(context);
//             },
//             child: const CardMenu(
//               fontwarna: Colors.white,
//               gambarmenu:"assets/logos/wallet.png",
//               labelmenu:"Saldo Anggota",
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }

class Tabungan extends StatefulWidget {
  // const Tabungan({Key? key}) : super(key: key);





  // final String nama;
  // final String jumlah;
  //
  //
  //
  //
  //
  // const Tabungan(
  //     {required this.nama,
  //       required this.jumlah});





  @override
  State<Tabungan> createState() => _TabunganState();
}

class _TabunganState extends State<Tabungan> {
 // var nama;
 // var jumlah;
 List <dynamic> dataVar = ["kuya",1,"gelo",



 ];

 // var dataVar;



  @override
  Widget build(BuildContext context) {
    // return Backdrop1(titlescreen: "my saldo",);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#755ddb"),
      body: Backdrop1(
        titlescreen: "Saldo Tabungan",
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),



                // child: _buildListView(),
                // child: const AllnewLstview(namaData: "sukarela"),
                // child: const AllnewLstview2(namaData: "sukarela"),
                // child: HomePage(),
                child: AllSuperstar(
                  namaData: "allsimpanan",
                ),
                // child: ListTabungan(),
              ),
            ),

            SizedBox(
              height: size.height * 0.0099,
            ),

          ],
        ),

        child2: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              // onFocusChange: MaterialState.disabled,
              onTap: () {
                Navigator.pop(context);
              },
              child: const CardMenu(
                gambarmenu: "assets/logos/tabungan.png",
                fontwarna: Colors.white,
                labelmenu: "Saldo Anggota",
              ),
            ),
            const CardHome(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CardMenu(
                fontwarna: Colors.white,
                gambarmenu: "assets/logos/wallet.png",
                labelmenu: "Saldo Anggota",
              ),
            ),
          ],
        ),
        ),




      // ),
    );
  }
}
