import 'package:flutter/material.dart';
import 'package:mobile_akr/screen/home.dart';
import 'package:mobile_akr/screen/update_data_diri.dart';
import 'package:mobile_akr/screen/update_password.dart';
import 'package:mobile_akr/widget/mainstrm_backround1.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/widget.dart';

class Eprofil extends StatelessWidget {
  const Eprofil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Backdrop1(titlescreen: "my saldo",);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#755ddb"),
      body: Backdrop1(
        titlescreen: "Edit Profil",
        child: Column(

          children: [
            Container(
              width: size.width * 100,
              // height: size.height * 0.24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    // padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Profil Anggota",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // SizedBox(height: size.height * 0.20,),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 20),
                    // padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: HexColor("#755ddb")),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/images/big-avatar2.png'),
                                      fit: BoxFit.cover )
                              ),
                              width: size.width * 0.19,
                              height: size.height * 0.12,





                              // child: Image.asset(
                              //   "assets/images/big-avatar2.png",
                              //   width: 55,
                              //   height: 55,
                              // )
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
                              children: const <Widget>[
                                Text(
                                  "Nama Anggota :",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Poppins-Bold',
                                  ),
                                ),
                                Text(
                                  "H.Sapri joyodiningrat",
                                  style: TextStyle(fontSize: 15.5),
                                ),
                                Divider(
                                  color: Color(0xFFD9D9D9),
                                  height: 12.5,
                                ),
                                Text(
                                  "ID Anggota :",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Poppins-Bold',
                                  ),
                                ),
                                Text(
                                  "500000000007564",
                                  style: TextStyle(fontSize: 15.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.0099,
            ),
            Container(
              width: size.width * 100,
              // height: size.height * 0.51,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    // padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Pengaturan Akun",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // SizedBox(height: size.height * 0.20,),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CardButtonLong(
                          labelmenu: "Pembaharuan Data Diri",
                          ikon: Icons.person,
                          ditap: PDataDiri( titles: "Pembaruan Data Diri"),

                        ),
                        CardButtonLong(
                          labelmenu: "Ubah Kata Sandi",
                          ikon: Icons.lock_rounded,
                          ditap: PeubahPASS(titles: "Ubah Kata sandi")

                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: size.height * 0.29,
            // ),

          ],
        ),

        child2: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CardHome(),
          ],
        ),
      ),
    );
  }
}
