import 'dart:async';
import 'dart:io';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocr/Screen/recognization_page.dart';
import 'package:ocr/Utils/image_cropper_page.dart';
import 'package:ocr/Utils/image_picker_class.dart';
import 'package:ocr/Widgets/modal_dialog.dart';
import 'package:d_button/d_button.dart';

import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';

import 'package:flutter/services.dart';




class wizard1 extends StatefulWidget {
  const wizard1({super.key});

  @override
  State<wizard1> createState() => _wizard1State();
}

class _wizard1State extends State<wizard1> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final bioData = TextEditingController();
  final bioData2 = TextEditingController();



  String? selectedProvinsi;
  String? selectedKota;
  String? selectedkecamatan;










  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'test'
        ),
      ),
      body: ListView(
        children: [

          Container(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
            color: Colors.greenAccent,
            // width: size.width * 0.50,
            // height: size.height * 0.90,
            child: Form(
              // key: formKey,
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    IntrinsicHeight(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "First name:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold

                                ),
                              ),
                            ],
                          ),
                          DView.height(5),

                          Expanded(
                            child: DInput(
                              // label: "First name",
                              controller: firstName,
                              fillColor: Colors.white70,
                              hint: 'masukan nama depan',
                              radius: BorderRadius.circular(10),
                              validator: (input) =>
                              input == '' ? "Don't empty" : null,
                            ),
                          ),
                        ],
                      ),
                    ),


                    DView.height(16),
                    IntrinsicHeight(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Last name:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold

                                ),
                              ),
                            ],
                          ),
                          DView.height(5),
                          Expanded(
                            child: DInput(
                              // maxLine: 10,
                              // label: "Last name",
                              controller: lastName,
                              fillColor: Colors.white70,
                              hint: 'masukan nama belakang',
                              radius: BorderRadius.circular(10),
                              validator: (input) =>
                              input == '' ? "Don't empty" : null,
                            ),
                          ),


                        ],
                      ),


                    ),
                    DView.height(16),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Biodata:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ],
                        ),
                        DView.height(5),
                        AspectRatio(
                            aspectRatio: 3,
                            child:  Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(


                                    controller: bioData,
                                    // cursorColor: Colors.amberAccent,

                                    maxLines: 8,
                                    decoration: InputDecoration.collapsed(

                                      hintText: "lengkapi Biodata",
                                      // labelText: "Biodata",
                                    ),

                                  ),
                                )
                            )
                        ),
                      ],
                    ),

                    DView.height(16),
                    // Expanded(
                    //     child: TextArea(
                    //       borderRadius: 10,
                    //       // borderColor: const Color(0xFFCFD6FF),
                    //
                    //       textEditingController: bioData2,
                    //       // suffixIcon: Icons.attach_file_rounded,
                    //       onSuffixIconPressed: () => {},
                    //       validation: false,
                    //       errorText: 'Please type a reason!',
                    //     ),
                    // )

                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Provinsi:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ],
                        ),
                        DView.height(5),
                        Container(
                          // margin: EdgeInsets.all(15),
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: DropdownButton<String?>(
                            value: selectedProvinsi,
                            onChanged: (value){
                              setState(() {
                                selectedProvinsi = value;
                              });
                            },
                            underline: SizedBox(),
                            isExpanded: true,
                            items: ["banten","jawa barat","jawa tengah","jawa timur"]
                                .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e,
                            )).toList(),
                          ),
                        ),
                      ],
                    ),
                    DView.height(16),
                    Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Kota:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ],
                        ),
                        DView.height(5),
                        Container(
                          // margin: EdgeInsets.all(15),
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: DropdownButton<String?>(
                            value: selectedKota,
                            onChanged: (value){
                              setState(() {
                                selectedKota = value;
                              });
                            },
                            underline: SizedBox(),
                            isExpanded: true,
                            items: ["Tangerang","bandung","magelang","salatiga"]

                                .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e,
                            )).toList(),
                          ),
                        ),
                      ],
                    ),
                    DView.height(16),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Kecamatan:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ],
                        ),
                        DView.height(5),
                        Container(
                          // margin: EdgeInsets.all(15),
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: DropdownButton<String?>(
                            value: selectedkecamatan,
                            onChanged: (value){
                              setState(() {
                                selectedkecamatan = value;
                              });
                            },
                            underline: SizedBox(),
                            isExpanded: true,
                            items: ["Curug","jatiasih","jati bening","kosambi"]
                                .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e,
                            )).toList(),
                          ),
                        ),
                      ],
                    ),






                  ],
                ),
              ),
            ),

          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            color: Colors.orange,
            // width: size.width * 0.50,
            // height: size.height * 0.50,
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "KTP:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                    ],
                  ),
                  DView.height(5),

                  Container(
                    padding: EdgeInsets.all(10),
                    // color: Colors.white70,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: size.height * 0.40,
                    height: size.width * 0.40,
    // child

                    child: DButtonShadow(
                      onClick: () {
                        imagePickerModal(context, onCameraTap: () {
                          log("Camera");
                          pickImage(source: ImageSource.camera).then((value) {
                            if (value != '') {
                              imageCropperView(value, context).then((value) {
                                if (value != '') {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (_) => RecognizePage(
                                        path: value,
                                      ),
                                    ),
                                  );
                                }
                              });
                            }
                          });
                        }, onGalleryTap: () {
                          log("Gallery");
                          pickImage(source: ImageSource.gallery).then((value) {
                            if (value != '') {
                              imageCropperView(value, context).then((value) {
                                if (value != '') {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (_) => RecognizePage(
                                        path: value,
                                      ),
                                    ),
                                  );
                                }
                              });
                            }
                          });
                        });
                      },
                      child:   Text(
                        "Upload KTP",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      // tooltip: 'Increment',
                      // label: const Text("Scan photo"),
                    ),

                  ),
                ],
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            color: Colors.blue,
            // child: Container(
            //   color: Colors.yellow,
            //   width: 90,
            //   height: 90,
            //   child: ,
            // ),

            // child: Padding(
            //     padding: const EdgeInsets.all(12.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.all(Radius.circular(20.0),),
            //           color: Colors.pink
            //       ),
            //       child: Center(
            //         child: Text("pink", style: TextStyle(fontSize: 24.0,
            //             fontWeight: FontWeight.bold),),
            //       ),
            //     ),
            //   ),

            child: Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data:"),
                      Text("data2"),
                    ],
                  ),



                ],
              ),
            ),






          ),

        ],
      ),
    );
  }
}
