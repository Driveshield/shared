


import 'package:flutter/material.dart';
import 'package:mobile_akr/screen/testinglist2.dart';

import 'package:mobile_akr/widget/mainstrm_backround1.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/widget.dart';


// class Pembiayaan extends StatefulWidget {
//   @override
//   State<Pembiayaan> createState() => _PembiayaanState();
// }

class Pembiayaan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // return Backdrop1(titlescreen: "my saldo",);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#755ddb"),
      body: Backdrop1(
        titlescreen: "Saldo Pembiayaan",

        // child: AllnewLstview(
        //   namaData: "pembiayaan",
        // ),


        child: Column(
          children: [

            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                // width: size.width * 100,
                // height: size.height * 0.70,
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(15.0),
                // ),
                // child: AllnewLstview(
                //   namaData: "pembiayaan",
                // ),

                child : AllSuperstar(namaData: "allpembiayaan"),
              ),
            ),

            // SizedBox(
            //   height: size.height * 0.0099,
            // ),

          ],
        ),

        child2:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              // onFocusChange: MaterialState.disabled,
              onTap: () {
                Navigator.pop(context);
              },
              child:  const CardMenu(
                gambarmenu: "assets/logos/tabungan.png",
                fontwarna: Colors.white,
                labelmenu: "Saldo Anggota",
              ),
            ),
            CardHome(),
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
    );
  }
}
