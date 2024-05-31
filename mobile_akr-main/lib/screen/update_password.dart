// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/simple_background.dart';
// import 'package:mobile_akr/component/component.dart';

import 'package:mobile_akr/widget/widget.dart';

class PeubahPASS extends StatefulWidget {
  final String titles;


  const PeubahPASS({Key? key, required this.titles}) : super(key: key);

  // final String tulisan;

  @override
  State<PeubahPASS> createState() => _PeubahPASSState();
}

class _PeubahPASSState extends State<PeubahPASS> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Simple_Bg(
      titles: widget.titles,
      content: Container(
        width: size.width,
        // color: Colors.green,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),


          child: Column(
              children: [
                Text(
                  "PERHATIAN!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding : EdgeInsets.all(4.0),
                  // color: Colors.green,
                  child: Text(
                    "Setelah melakukan perubahan kata sandi, anda akan diminta melakukan login ulang",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),


                MyForm(
                  readonly:false,
                  label: "Kata Sandi Lama",
                  hinttext: "",
                  obscureText: true,
                  atas: 20,
                  bawah: 40,
                  kanan: 20,
                  kiri: 20,
                ),
                MyForm(
                  readonly:false,
                  label: "Kata Sandi Baru",
                  hinttext: "",
                  obscureText: true,
                  atas: 0,
                  bawah: 40,
                  kanan: 20,
                  kiri: 20,
                ),

                MyForm(
                  readonly:false,
                  label: "(Ulangi) Kata Sandi Baru",
                  hinttext: "",
                  obscureText: true,
                  atas: 0,
                  bawah: 40,
                  kanan: 20,
                  kiri: 20,
                ),



                ButtonCustom(
                  // tekan:  () {
                  //         Navigator.pop(context);
                  //       },
                  colorButton: HexColor("#755ddb"),
                  labelButton: "SIMPAN",
                  fontcolor: Colors.white,
                  width: 190,
                  height: 38,
                  sizefont: 14,
                ),
              ]),
        ),
      ),
    );

  }
}
