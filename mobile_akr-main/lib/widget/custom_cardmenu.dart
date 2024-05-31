import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mobile_akr/screen/screen.dart';
// import 'package:mobile_akr/widget/size_all.dart';

class CardHome2 extends StatelessWidget {
  const CardHome2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.orange,
      width: size.width * 0.28,
      height: size.height * 0.126 ,
      //
      // width: 110,
      // height: 90,
      child: Center(
        child: Material(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: Column(children: [
            Container(
              // padding: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(12),
                // width: SizeAll().queryData.size.width,
                width: (size.height + size.width) * 0.0571 ,
                height: (size.height + size.width) * 0.0571 ,
                // width: 60,
                // height: 60 ,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(100.0),
                  // color: Colors.orange
                ),


                child: Image.asset("assets/logos/browser.png")),
            const SizedBox(height: 5),
            Text(
              "widget.labelmenu",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins-Bold',
                fontSize: 10.0,
              ),
            ),
          ]),
        ),
      ),
    );

  }
}

class CardMenu extends StatefulWidget {
  final String labelmenu;
  final String gambarmenu;
  final Color? fontwarna;

  const CardMenu({
    Key? key,
    required this.labelmenu,
    required this.gambarmenu,
    required this.fontwarna,
  }) : super(key: key);

  @override
  State<CardMenu> createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // var queryData;
    // return SizedBox(
    return Container(
      // color: Colors.orange,
      width: size.width * 0.28,
      height: size.height * 0.126 ,
      //
      // width: 110,
      // height: 90,
      child: Center(
        child: Material(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: Column(children: [
            Container(
                // padding: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(12),
                // width: SizeAll().queryData.size.width,
                width: (size.height + size.width) * 0.055 ,
                height: (size.height + size.width) * 0.055 ,
                // width: 60,
                // height: 60 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(15.0),
                  // color: Colors.orange
                ),
                child: Image.asset(widget.gambarmenu)),
            const SizedBox(height: 5),
            Text(
              widget.labelmenu,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.fontwarna,
                fontFamily: 'Poppins-Bold',
                fontSize: 10.0,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class CardHome extends StatelessWidget {
  const CardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(

      // width: 110,
      // height: 105,
      child: Card(

        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Column(children: [
          InkWell(
            borderRadius: BorderRadius.circular(100.0),

            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) {
              //     return Home();
              //   }),
              // );
            },

            child: Container(
                padding: const EdgeInsets.all(15),
                width: (size.height + size.width+ 40) * 0.057 ,
                height: (size.height + size.width+ 40) * 0.057 ,
                // width: 60,
                // height: 60,
                decoration: BoxDecoration(
                  color: Colors.white60,

                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(100.0),
                  // color: Colors.orange
                ),
                child: Image.asset("assets/logos/browser.png")),
          ),
          const SizedBox(height: 3),
          const Text(
            "Halaman Utama",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins-Bold',
              fontSize: 10.0,
            ),
          ),
        ]),
      ),
    );
  }
}

class CardButtonLong extends StatefulWidget {
  final String labelmenu;
  final IconData ikon;
  var ditap;

  // final Color? fontwarna;

   CardButtonLong({
    Key? key,
    required this.labelmenu,
    required this.ikon,
    this.ditap,
    // required this.fontwarna,
  }) : super(key: key);

  @override
  State<CardButtonLong> createState() => _CardButtonLongState();
}

class _CardButtonLongState extends State<CardButtonLong> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        // padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
        padding: EdgeInsets.all(10),
        child: InkWell(
          onTap: (){
            // widget.ditap;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return widget.ditap;
              }
              ),
            );
          },

          // child: Material(
          child: Container(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            // padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
            // padding: EdgeInsets.all(2),

            // color: Colors.red,
            // shadowColor: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(widget.ikon, color: Colors.purple),
                ),
                Expanded(
                  flex: 6,
                  child: Text(
                    widget.labelmenu,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.purple,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class CardMenutest extends StatefulWidget {
//   late final String icon;
//   late final String text;
//   late final Color? bgColor;
//
//   late final Color? dotsColor;
//
//   CardMenutest({
//     required this.icon,
//     required this.text,
//     this.bgColor = Colors.white,
//     this.dotsColor = Colors.black,
//   });
//
//   @override
//   _CardMenutestState createState() => _CardMenuState();
// }
//
// class _CardMenutestState extends State<CardMenutest> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: new GestureDetector(
//           onTap: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) {
//               return CategoryList(
//                 icon: widget.icon,
//                 title: widget.text,
//               );
//             }));
//           },
//           child: Container(
//             margin: EdgeInsets.only(right: 7.5, left: 7.5),
//             padding: EdgeInsets.only(left: 10, right: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               color: widget.bgColor,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [boxShadowSm],
//               // border: Border.all(color: Theme.of(context).primaryColor)
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         ImageIcon(
//                           AssetImage(widget.icon),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: EdgeInsets.only(left: 16),
//                             child: Text(
//                               widget.text,
//                               maxLines: 2,
//                               style: TextStyle(fontSize: 17.5),
//                               softWrap: false,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//                 Icon(
//                   Icons.adjust_outlined,
//                   color: widget.dotsColor,
//                   size: 15,
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
