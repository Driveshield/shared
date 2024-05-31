// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:mobile_akr/component/component.dart';

import 'package:mobile_akr/widget/widget.dart';

class Simple_Bg extends StatefulWidget {
  final String titles;
  final Widget content;


  const Simple_Bg({Key? key, required this.titles,required this.content}) : super(key: key);

  // final String tulisan;

  @override
  State<Simple_Bg> createState() => _Simple_BgState();
}

class _Simple_BgState extends State<Simple_Bg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;



    return Scaffold(

      appBar: AppBar(
        backgroundColor: HexColor("#CDC3FF"),
        // color: HexColor("#755ddb"),
        // color: HexColor("#CDC3FF"),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.titles,
          style: TextStyle(
            color: Colors.black,
            // color: HexColor("#CDC3FF"),
            fontSize: 20.0,
            fontFamily: 'Poppins-Bold',
          ),
        ),
        shadowColor: Colors.transparent,
        centerTitle: true,

        // CustomShape1(),
        // shape: RoundedRectangleBorder(
        //         side: BorderSide(color: Colors.deepPurpleAccent, width: 2),
        //         borderRadius: BorderRadius.circular(15),
        //       ),
      ),
      body: widget.content,

    );
  }
}
