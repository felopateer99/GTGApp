import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'QRButtonWidget.dart';


class ScanScreen extends StatefulWidget
{
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String qrCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 11,
        leading: IconButton(onPressed: () {
          Navigator.pop(
            context,
          );
        },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 27,
          ),
        ),

        title: const Padding(
          padding: EdgeInsets.only(left: 55, top: 5, right: 0, bottom: 0),
          child: Image(

            image: NetworkImage(
                'https://i.ibb.co/Bs2Wngf/GTG.png'
            ),
            height: 50,
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                left: 0, top: 0, right: 0, bottom: 0),
            child: IconButton(onPressed: () {},
              icon: Icon(
                Icons.notification_important,
                color: Colors.white,
                size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 0, top: 0, right: 5, bottom: 0),
            child: IconButton(onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 28,),
            ),
          ),

        ],
      ),

      body:
      Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[

          const Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/7d/46/d8/7d46d8e363d3382953ef4eb0331bd4b4.jpg'
            ),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),


          Padding(


            padding: const EdgeInsets.all(20.0),
            child: Center(
              // hna fe singlechildscrollview fe screens el kbera
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [


                  // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                  Padding(

                    padding: const EdgeInsets.only(
                      left: 0, top: 120, right: 0, bottom: 0,),
                    child: Container(decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.deepPurple,
                    ),

                      width: 180,
                      height: 60,

                      child:
                      Container(
                        alignment: Alignment.center,
                        child: Text('English',
                          style: TextStyle(fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0, top: 30, right: 0, bottom: 0,),
                    child: Container(

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.deepPurple,
                      ),

                      width: 250,
                      height: 60,

                      child: Container(
                        alignment: Alignment.center,
                        child: Text('Dialouge',
                          style: TextStyle(fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),


                  const Image(
                    image: NetworkImage(
                        'https://www.hellotech.com/guide/wp-content/uploads/2020/05/HelloTech-qr-code-1024x1024.jpg'
                    ),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: double.infinity,
                      height: 60,

                      child: MaterialButton(
                        onPressed: () async {
                          var url = '$qrCode';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                          else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Text('$qrCode',
                            style: TextStyle(fontSize: 24,
                              color: Colors.blue,)
                        ),
                      )
                  ),
                  SizedBox(height: 30),

                  QRButtonWidget(
                    color: Colors.green,
                    text: 'Scan AR Code',
                    onClicked: () => ScanQRCode(),
                  ),

                ],
              ),

            ),
          ),
        ],
      ),
    );
  }


Future <void> ScanQRCode ()async {
  try {
    final qrCode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.QR,
    );

    if (!mounted) return;

    setState (() {
      this.qrCode = qrCode.isEmpty
          ? ''
          : qrCode == '-1'
          ? ''
          : qrCode;
    });
  } on PlatformException {
    qrCode = 'Failed to get platform version.';
  }
 }
}