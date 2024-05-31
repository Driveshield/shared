import 'package:flutter/material.dart';
import 'package:mobile_akr/widget/mainstrm_backround1.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/widget.dart';



class Belum_tersedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Backdrop1(titlescreen: "my saldo",);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#755ddb"),
      body: Backdrop1(
        titlescreen: "Layanan Belum Tersedia",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: EdgeInsets.all(57),
              // width: size.width * 100,
              // height: size.height * 0.76,
              // height: 90,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/logos/info.png"),

                  const Text(
                    "Mohon Maaf,Untuk Saat ini Layanan Belum Tersedia",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins-Bold',

                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: size.height * 0.0099,
            ),
            //
          ],
        ),
        child2: CardHome(),
      ),
    );
  }
}

