import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gtgapplication/DoneScreen.dart';
import 'components.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class TeacherAnswerScreen extends StatefulWidget
{
  const TeacherAnswerScreen({Key? key}) : super(key: key);

  @override
  State<TeacherAnswerScreen> createState() => TeacherAnswerScreenState();
}

class TeacherAnswerScreenState extends State<TeacherAnswerScreen> {
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
          icon: Icon(
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
              //child: SingleChildScrollView(


                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                      // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                       Container(

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Colors.deepPurple,
                          ),

                          width: 200,
                          height: 200,

                          child: Container(
                            alignment: Alignment.center,
                            child:
                            Text('Questions',
                              style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold ),
                            ),

                          ),
                        ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                          child: Text('Question:',

                            style: TextStyle(fontSize: 22,
                                fontWeight: FontWeight.w900 ),
                          ),
                        ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white, // Border Color
                            border: Border.all(width: 3.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0) //                 <--- border radius here
                            ),
                          ),
                          child: Container(

                            alignment: Alignment.centerLeft,
                            child: Text('Student question:',
                              style: TextStyle(fontSize: 15,
                              ),
                            ),
                            ),

                        ),
                      SizedBox(
                        height: 10.0,
                      ),
                       Container(
                         alignment: Alignment.topLeft,
                          child: Text('Teacher reply:',

                            style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w900 ),
                          ),
                        ),
                       Container(
                          height: 150,
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
                                hintText: 'Write your answer.',

                              ),
                            ),
                          ),
                      ),
                        SizedBox(
  height: 20,
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
                  )

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