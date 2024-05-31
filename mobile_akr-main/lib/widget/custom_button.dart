import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_akr/screen/screen.dart';
import 'package:mobile_akr/model/api.dart';
import 'package:provider/provider.dart';
import 'package:mobile_akr/widget/custom_form.dart';


class ButtonCustom extends StatefulWidget{

  final String labelButton;
  final double sizefont;
  final double width;
  final double height;
  final Color? fontcolor;
  final Color? colorButton;
  // final Widget sambungan;
  // final Function tekan;

  const ButtonCustom({
    Key? key,
    required this.labelButton,
    required this.sizefont,
    required this.width,
    required this.height,
    required this.fontcolor,
    required this.colorButton,
    // required this.sambungan,
    // required this.tekan,

  }): super(key: key);

  @override
  State<ButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {


  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();



    final ButtonStyle Styling = ElevatedButton.styleFrom(
      // onPrimary: Colors.orange,
      primary: widget.colorButton,
      minimumSize: Size(widget.width, widget.height),
      // padding: EdgeInsets.symmetric(horizontal: 70),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    );

    return ElevatedButton(
      style: Styling,

        // onPressed: widget.tekan(),

        // onPressed: (){widget.dipencet;}
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            // return Home(nomorID: "testdaributton");
            return ChangeNotifierProvider(
                create: (context) => HttpProvider(),
                // child: Home(nomorID: "500000000007619"),
                // child: widget.sambungan,
                child: Home(nomorID: "500000000008521"),
                // child: Home(nomorID: valuenya1),
                // child: Login(),
              );



          }),
        );
      },
      child: Text(
        widget.labelButton,
        style: TextStyle(
          fontFamily: 'Poppins-Bold',
          color: widget.fontcolor,
          fontSize: widget.sizefont,
        ),),
    );
  }
}


