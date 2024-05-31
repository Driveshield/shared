import 'package:flutter/material.dart';

// Container(
// width: 260,
// child: TextFormField(
// decoration: InputDecoration(
// //             border: OutlineInputBorder(
// // borderRadius: new BorderRadius.circular(5.0)),
//
// labelText: "Password",
// labelStyle: TextStyle(
// fontSize: 16,
// color: Colors.black,
// fontWeight: FontWeight.bold),
// hintText: "Masukan Paswword anda",
//
// // icon: Icon(Icons.people)
// ),
//
// // ini cara kerja variebel di form input
// onChanged: (tset) {
// // test = tset;
// //
// },
// ),
// ),

class MyForm extends StatefulWidget {

  late final bool readonly;
  late final String label;
  late final String hinttext;
  late final bool obscureText;
  late final double kiri;
  late final double kanan;
  late final double atas;
  late final double bawah;

  MyForm({
    required this.readonly,
    required this.label,
    required this.hinttext,
    required this.obscureText,
    required this.kiri,
    required this.kanan,
    required this.bawah,
    required this.atas,
  });

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bawah, top: widget.atas ,left:widget.kiri,right: widget.kanan ),
      child: Container(
        // width: ,
        // width: 260,
        child: TextFormField(
          readOnly: widget.readonly,
          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: const TextStyle(

                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            hintText: widget.hinttext,
          ),
// ini cara kerja variebel di form input
          onChanged: (tset) {

            // test = tset;
          },
          // onChanged: (tset) {
          //
          //   // test = tset;
          // },
        ),
      ),
    );
  }
}
