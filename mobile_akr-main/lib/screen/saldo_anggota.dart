import "dart:convert";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_akr/widget/mainstrm_backround1.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/widget.dart';



class Simpanan extends StatefulWidget {



  @override
  State<Simpanan> createState() => _SimpananState();
}

class _SimpananState extends State<Simpanan> {





  @override
  Widget build(BuildContext context) {
    // return Backdrop1(titlescreen: "my saldo",);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#755ddb"),
      body: Backdrop1(
        titlescreen: "Saldo Simpanan",
        child: Column(
          children: [
            Container(
              // color: Colors.black,
              width: size.width * 1,
              height: size.height * 0.5,
              // decoration: BoxDecoration(
              //   color: Colors.black,
              //   borderRadius: BorderRadius.circular(15.0),
              // ),
              child: Stack(
                children: <Widget>[
                  // Positioned.fill(
                  //   child: Align(
                  //       alignment: Alignment.topCenter,
                  //       child: Container(
                  //         width: 20,
                  //         height: 20,
                  //         color: Colors.grey,
                  //       ),
                  //   ),
                  // ),

                  Positioned(
                    left: 10.0,
                    top: 15.0,
                    child: Align(
                      // alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 25),
                        width: size.width * 0.943,
                        // height: 90,
                          decoration: BoxDecoration(
                          color: HexColor("#CDC3FF"),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              // padding: EdgeInsets.all(6),
                              // color: Colors.orange,
                              width: size.width * 0.29,
                              child: Text(
                                "Saldo SDA",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            Text(
                                "Rp.1000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

              Positioned(
                left: 10.0,
                top: 70.0,
                child: Align(
                  // alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 25),
                    width: size.width * 0.943,
                    // height: 90,
                    decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Container(
                        // padding: EdgeInsets.all(6),
                        // color: Colors.orange,
                        width: size.width * 0.29,
                        child: Text(
                          "Saldo Sukarela",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      Text(
                        "Rp.159.000",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),

                    ],
                  ),
                ),
              ),


                  ),

                  Positioned(
                    left: 10.0,
                    top: 125.0,
                    child: Align(
                      // alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 25),
                        width: size.width * 0.943,
                        // height: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:  [
                            Container(
                              // padding: EdgeInsets.all(6),
                              // color: Colors.orange,
                              width: size.width * 0.29,
                              child: Text(
                                "Saldo Simpanan Pokok",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            Text(
                              "Rp.30.000",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),


                  ),

                ],
              ),
            ),

            SizedBox(
              height: size.height * 0.0099,
            ),

          ],
        ),

        child2:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              // onFocusChange: MaterialState.disabled,
              onTap: () {
                Navigator.pop(context);
              },
              child: const CardMenu(
                gambarmenu: "assets/logos/pembiayaan.png",
                fontwarna: Colors.white,
                labelmenu: "Saldo Pembiayaan",
              ),
            ),
            // CardHome(),
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
