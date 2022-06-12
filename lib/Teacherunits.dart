import 'package:flutter/material.dart';
import 'package:gtgapplication/Tunit1.dart';
import 'package:gtgapplication/Tunit10.dart';
import 'package:gtgapplication/Tunit11.dart';
import 'package:gtgapplication/Tunit12.dart';
import 'package:gtgapplication/Tunit13.dart';
import 'package:gtgapplication/Tunit14.dart';
import 'package:gtgapplication/Tunit15.dart';
import 'package:gtgapplication/Tunit16.dart';
import 'package:gtgapplication/Tunit2.dart';
import 'package:gtgapplication/Tunit3.dart';
import 'package:gtgapplication/Tunit4.dart';
import 'package:gtgapplication/Tunit5.dart';
import 'package:gtgapplication/Tunit6.dart';
import 'package:gtgapplication/Tunit7.dart';
import 'package:gtgapplication/Tunit8.dart';
import 'package:gtgapplication/Tunit9.dart';

import 'components.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class TeacherUnitsScreen extends StatefulWidget
{
  const TeacherUnitsScreen({Key? key}) : super(key: key);

  @override
  State<TeacherUnitsScreen> createState() => _TeacherUnitsScreenState();
}

class _TeacherUnitsScreenState extends State<TeacherUnitsScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 11,
        leading: IconButton(onPressed: (){
          Navigator.pop(
            context,
          );
        },
          icon: const Icon(
            Icons.arrow_back,
            color:  Colors.white,
            size: 27,
          ),
        ),

        title: const Padding(
          padding: EdgeInsets.only(left:55,top:5,right:0,bottom: 0),
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
            padding: const EdgeInsets.only(left :0, top:0, right:0, bottom:0),
            child: IconButton(onPressed: (){},
              icon: const Icon(
                Icons.notification_important,
                color:  Colors.white,
                size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left :0, top:0, right:5, bottom:0),
            child: IconButton(onPressed: (){},
              icon: const Icon(
                Icons.account_circle_rounded,
                color:  Colors.white,
                size: 28,),
            ),
          ),

        ],
      ),

      body:
      Stack(
        alignment: Alignment.topCenter,
        children: [

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                    // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                    Padding(
                      padding: const EdgeInsets.only(left:0 ,top:90 ,right: 0,bottom:0 ,),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Colors.deepPurple,
                        ),

                        width: 200,
                        height: 200,


                        child: const Text('Units',
                          style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),


                    const SizedBox(
                      height: 60.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit1()
                            ),
                          );
                        },
                          child: const Text('Unit 1',
                              style:TextStyle(fontSize: 24,
                                  color: Colors.white)
                          ),
                        )
                    ),

                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit2()
                            ),
                          );
                        },
                          child: const Text('Unit 2',
                              style:TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit3()
                            ),
                          );
                        },
                          child: const Text('Unit 3',
                              style:TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit4()
                            ),
                          );
                        },
                          child: const Text('Unit 4',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit5()
                            ),
                          );
                        },
                          child: const Text('Unit 5',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit6()
                            ),
                          );
                        },
                          child: const Text('Unit 6',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit7()
                            ),
                          );
                        },
                          child: const Text('Unit 7',
                              style:TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit8()
                            ),
                          );
                        },
                          child: const Text('Unit 8',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit9()
                            ),
                          );
                        },
                          child: const Text('Unit 9',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit10()
                            ),
                          );
                        },
                          child: const Text('Unit 10',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit11()
                            ),
                          );
                        },
                          child: const Text('Unit 11',
                              style:TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit12()
                            ),
                          );
                        },
                          child: const Text('Unit 12',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit13()
                            ),
                          );
                        },
                          child: const Text('Unit 13',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit14()
                            ),
                          );
                        },
                          child: const Text('Unit 14',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit15()
                            ),
                          );
                        },
                          child: const Text('Unit 15',
                              style:TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  const Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tunit16()
                            ),
                          );
                        },
                          child: const Text('Unit 16',
                              style:const TextStyle(fontSize: 24,color: Colors.white)
                          ),
                        )
                    ),
                    const SizedBox(
                      height: 30.0,
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