// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/widget/simple_background.dart';
// import 'package:mobile_akr/component/component.dart';

import 'package:mobile_akr/widget/widget.dart';

class PDataDiri extends StatefulWidget {
  final String titles;


  const PDataDiri({Key? key, required this.titles}) : super(key: key);

  // final String tulisan;

  @override
  State<PDataDiri> createState() => _PDataDiriState();
}

class _PDataDiriState extends State<PDataDiri> {
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


                  MyForm(
                    readonly:true,
                    label: "ID Anggota",
                    hinttext: "",
                    obscureText: true,
                    atas: 20,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),
                  MyForm(
                    readonly:true,
                    label: "No.KTP/NIK",
                    hinttext: "",
                    obscureText: true,
                    atas: 0,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),

                  MyForm(
                    readonly:true,
                    label: "Tanggal Lahir",
                    hinttext: "",
                    obscureText: true,
                    atas: 0,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),

                  MyForm(
                    readonly:true,
                    label: "Tempat Lahir",
                    hinttext: "",
                    obscureText: true,
                    atas: 0,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),

                  MyForm(
                    readonly:true,
                    label: "Nama Ibu Kandung",
                    hinttext: "",
                    obscureText: true,
                    atas: 0,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),

                  MyForm(
                    readonly:false,
                    label: "Alamat",
                    hinttext: "Masukan Alamat Anda",
                    obscureText: true,
                    atas: 0,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),

                  MyForm(
                    readonly:false,
                    label: "Email",
                    hinttext: "Masukan Email Anda",
                    obscureText: true,
                    atas: 0,
                    bawah: 40,
                    kanan: 20,
                    kiri: 20,
                  ),

                  MyForm(
                    readonly:false,
                    label: "No.Handphone",
                    hinttext: "Masukan Alamat Anda",
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
