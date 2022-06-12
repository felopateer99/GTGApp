import 'dart:async';


import 'package:flutter/material.dart';
import 'package:gtgapplication/loginTeacher.dart';
import 'package:gtgapplication/SubjectScreen.dart';
import 'package:gtgapplication/login.dart';
import 'components.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class ChooseScreen extends StatefulWidget
{
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseScreen> createState() => ChooseScreenState();
}

class ChooseScreenState extends State<ChooseScreen> {

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

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left:30,top:180,right:0,bottom: 0),
                      child: Image(

                        image: NetworkImage(
                            'https://i.ibb.co/Bs2Wngf/GTG.png'
                        ),
                        height: 140,
                        width: 260,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(

                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              elevation: 5.0,
                              height: 40,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              color: Colors.deepPurple,
                              child: Text(
                                "Student",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                          ],
                        ),

                      ),
                    ),
                    Container(

                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              elevation: 5.0,
                              height: 40,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TeacherLoginScreen(),
                                  ),
                                );
                              },
                              color: Colors.deepPurple,
                              child: Text(
                                "Teacher",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                          ],
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('about'
                            )
                          ],
                        ),
                      ),

                    )

                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}