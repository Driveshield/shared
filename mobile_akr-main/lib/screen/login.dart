import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/component/component.dart';
import 'package:mobile_akr/screen/home.dart';
import 'package:mobile_akr/widget/widget.dart';


// import 'package:mobile_akr/model/auth.dart';
import 'package:mobile_akr/model/api.dart';
import 'package:provider/provider.dart';

// import 'home.dart';
// import 'package:mobile_akr/home.dart';




class Login extends StatefulWidget {
  // const Login({Key? key, required this.tulisan}) : super(key: key);
  const Login({Key? key}) : super(key: key);
  // final String tulisan;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {






  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // drawerScrimColor: Colors.green,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(),
          children: [
            Center(
              child: Column(children: [
                Container(
                  // width: 370,
                  width: size.width ,
                  decoration: BoxDecoration(
                    // color: Theme.of(context).primaryColorLight
                    color: primaryColor234,
                    // color: HexColor("#CDC3FF"),
                  ),
                  child: Column(children: const [
                    // SizedBox(height: 90),
                    // SizedBox(
                    //   height: size.height * 0.112,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "AKR syariah Mobile",
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image(image: AssetImage("assets/logos/akr-2.png")),
                    // Image.asset("assets/logos/akr-2.png"),
                    Text(
                      "Selamat Datang Kembali",
                      style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Silahkan Login untuk melanjutkan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),

                    // ),
                  ]),
                ),
                ClipPath(
                  clipper: CustomShape1(),
                  child: Container(
                    height: size.height * 0.125,
                    // height: 100, //150
                    color: HexColor("#CDC3FF"),
                  ),
                ),

                MyForm(
                  readonly: false,
                  label: "ID Anggota",
                  hinttext: "Masukan Id anggota anda",
                  obscureText: false,
                  atas: 0,
                  bawah: 40,
                  kanan: 50,
                  kiri: 50,
                ),

                MyForm(
                  readonly: false,
                  label: "Password",
                  hinttext: "Masukan Password anda",
                  obscureText: true,
                  atas: 0,
                  bawah: 40,
                  kanan: 50,
                  kiri: 50,
                ),


                ButtonCustom(

                  colorButton: HexColor("#755ddb"),
                  labelButton: "MASUK",
                  fontcolor: Colors.white,
                  width: 190,
                  height: 38,
                  sizefont: 14,
                ),

              ]),
            ),
          ],
        ),
      ),


    );
  }
}
