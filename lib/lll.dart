import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gtgapplication/DoneScreen.dart';
import 'package:gtgapplication/RegisterScreen.dart';
import 'package:gtgapplication/Student.dart';
import 'package:gtgapplication/SubjectScreen.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class lll extends StatefulWidget
{
  const lll({Key? key}) : super(key: key);

  @override
  State<lll> createState() => _lllState();
}

class _lllState extends State<lll> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();


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


            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90,),

                    // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:  Colors.deepPurple,
                      ),
                      width: 180,
                      height: 60,
                      child:
                      Container(
                        alignment: Alignment.center,
                        child: Text('English',

                          style: TextStyle(fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:  Colors.deepPurple,
                      ),

                      width: 260,
                      height: 60,

                      child:
                      Text('Homework Feedback',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Teacher comment:',

                        style: TextStyle(fontSize: 22,
                            fontWeight: FontWeight.w900 ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white, // Border Color
                        border: Border.all(width: 3.0),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0) //                 <--- border radius here
                        ),
                      ),
                      child: Center(
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,

                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: 'Write your comment.',

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:  Colors.green,
                      ),

                      width: 250,
                      height: 100,

                      child: IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoneScreen()
                          ),
                        );
                      },

                        icon:Text('Send',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

