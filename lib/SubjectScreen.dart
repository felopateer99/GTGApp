import 'package:flutter/material.dart';
import 'package:gtgapplication/SelectTeacherScreen.dart';
import 'package:gtgapplication/login.dart';
import 'components.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class SubjectScreen extends StatefulWidget
{
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 11,
        

        title: const Padding(
          padding: EdgeInsets.only(left:110,top:5,right:0,bottom: 0),
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
              icon: Icon(
                Icons.notification_important,
                color:  Colors.white,
                size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left :0, top:0, right:5, bottom:0),
            child: IconButton(onPressed: (){},
              icon: Icon(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                     // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                       Padding(
                         padding: const EdgeInsets.only(left:0 ,top:90 ,right: 0,bottom:0 ,),
                         child: Container(

                            decoration: BoxDecoration(
                             shape: BoxShape.circle,
                              color:  Colors.deepPurple,
                            ),

                            width: 200,
                            height: 200,

                            child: Container(
                              alignment: Alignment.center,
                              child:
                              Text('Subjects',
                              style: TextStyle(fontSize: 40,
                                  color: Colors.white,
                              fontWeight: FontWeight.bold ),
                              ),

                            ),
                      ),
                       ),


                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                       decoration: BoxDecoration(
                         color:  Color(0xffCF90DA),
                         borderRadius: BorderRadius.circular(50),
                       ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectTeacherScreen()
                            ),
                          );
                        },
                          child: Text('English',
                          style:TextStyle(fontSize: 24,
                            color: Colors.white,),

                          ),
                        )
                    ),

                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){},
                          child: Text('Math',
                              style:TextStyle(fontSize: 24,
                                color: Colors.white,)
                          ),
                        )
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color:  Color(0xffCF90DA),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: double.infinity,
                        height: 60,

                        child: MaterialButton(onPressed: (){},
                          child: Text('Arabic',
                              style:TextStyle(fontSize: 24,
                                color: Colors.white,)
                          ),
                        )
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

