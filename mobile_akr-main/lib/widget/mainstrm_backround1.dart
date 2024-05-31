import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_akr/widget/widget.dart';

import 'package:flutter/painting.dart';

class Backdrop1 extends StatefulWidget {
  // late final Widget coba;
  final Widget child;
  final Widget child2;

  final String titlescreen;

  const Backdrop1({
    Key? key,
    required this.child,
    required this.child2,
    required this.titlescreen,
  }) : super(key: key);

  @override
  State<Backdrop1> createState() => _Backdrop1State();
}

class _Backdrop1State extends State<Backdrop1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                  // size: size.aspectRatio * 70,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                widget.titlescreen,
                // "Saldo Pembiayaan",
                // textAlign: ,
                style: const TextStyle(
                  fontFamily: 'Poppins-Bold',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              // SizedBox(
              //   width: size.width * 0.099,
              // ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                  // size: size.aspectRatio * 70,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),

          Flexible(

            child: Container(
              // height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),


              child: widget.child,
            ),
          ),

          // widget.child,
          widget.child2,

        ],
      ),
    );
  }
}
