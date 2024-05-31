import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/screen/testinglist2.dart';
import 'package:mobile_akr/widget/widget.dart';

import 'package:flutter/painting.dart';

import 'package:intl/intl.dart';

class DetailSimp extends StatefulWidget {


  final String detitlescreen ;

  const DetailSimp({
    Key? key,
    // required this.child,
    // required this.child2,
    required this.detitlescreen ,
  }) : super(key: key);

  @override
  State<DetailSimp> createState() => _DetailSimpState();
}

class _DetailSimpState extends State<DetailSimp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime defaultDate = DateTime.now();
    return Scaffold(
      // backgroundColor: Colors.orange,

      appBar: AppBar(
        backgroundColor: HexColor("#CDC3FF"),
        // color: HexColor("#755ddb"),
        // color: HexColor("#CDC3FF"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black, ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
            widget.detitlescreen,
          style: TextStyle(
            color: Colors.black,
            fontSize: (size.height * 0.01) + 10.0,
            fontFamily: 'Poppins-Bold',
          ),
        ),
        shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Stack(

        children: [
      Positioned(
        // left: 10.0,
        top: 0,
        child: Container(
              height: size.height * 0.06,
              width: size.width,
              decoration: BoxDecoration(
                color: HexColor("#CDC3FF"),
                borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(70),
                  // bottomRight: Radius.circular(70),
                ),
              ),
              // color: Colors.deepPurple,
            ),
      ),

          Positioned(
            left: 0.0,
            top: 48.0,
            child: Container(
              // color: Colors.blue,
              width: size.width,
              height: size.height,
              // child: ListView(
              //   children: [
              //     Container(
              //       color: Colors.red,
              //       width: 20,
              //       height: 30,
              //     )
              //
              //   ],
              // ),

              // child: ListDetailsimp(),

              // child: AllnewLstview(
              //   namaData: "detail_simpanan",
              // ),


              child: AllSuperstar(
                namaData: "detail_simpanan",
              ),



            ),
          ),


          Positioned(
            left: 10.0,
            top: 0.0,
            child: Align(
              // alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                width: size.width * 0.943,
                // height: 90,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  color: HexColor("#755ddb"),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Container(
                      color: Colors.white,
                      width: 90,
                      child: TextFormField(
                        initialValue: DateFormat.yMd().format(defaultDate).toString(),
                        onTap: (){
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1800),
                            lastDate: DateTime(2065),
                        );

                      },
                      ),
                    ),




                                       // ButtonCustom(
                                       //    colorButton: Colors.white,
                                       //    labelButton: "01/08/2021",
                                       //    fontcolor: Colors.black,
                                       //    sizefont: 13.5,
                                       //    width: 20,
                                       //    height: 40,
                                       //  ),

                    Text(
                      "s/d",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),

                    ButtonCustom(
                      colorButton: Colors.white,
                      // labelButton: "28/08/2021",
                      labelButton: DateFormat("d/MM/yyyy").format(defaultDate).toString(),
                      fontcolor: Colors.black,
                      sizefont: 16,
                      width: 15,
                      height: 40,
                    ),

                    ButtonCustom(
                      colorButton: Colors.deepOrange,
                      labelButton: "Lihat",
                      fontcolor: Colors.white,
                      sizefont: 12,
                      width: 30,
                      height: 25,
                    ),

                  ],
                ),
              ),
            ),
          ),


        ],
      ),

      // appBar: AppBar(
      //   // backgroundColor: Colors.,
      //
      // ),
    );
  }
}
