import 'dart:async';


import 'package:flutter/material.dart';
import 'package:gtgapplication/SubjectScreen.dart';
import 'package:gtgapplication/login.dart';
import 'components.dart';
import 'choose.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class FirstScreen extends StatefulWidget
{
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => ChooseScreen()));
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      //appBar: AppBar(),

      body:
      Stack(
        alignment: Alignment.topCenter,
        children: [

          const Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/21/d4/4d/21d44d576129a0a7dd3f46b75aa67a65.jpg'
            ),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),



          Padding(
          padding: const EdgeInsets.all(30.0),
            child: Center(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left:0,top:180,right:10,bottom: 0),
                      child: Image(

                        image: NetworkImage(
                            'https://i.ibb.co/Bs2Wngf/GTG.png'
                        ),
                        height: 140,
                        width: 260,
                        fit: BoxFit.fill,
                      ),
                    ),

              ],
  ),

          ),
          ), ],
      ),
    );
  }
}

