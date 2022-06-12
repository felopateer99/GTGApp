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
class QuestionsScreen extends StatefulWidget
{
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
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
                        shape: BoxShape.circle,
                        color:  Color(0xffCF90DA),
                      ),

                      width: 200,
                      height: 200,

                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Text('Questions',
                          style: TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold ),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 60.0,
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
                            hintText: 'Asking Question',

                            prefixIcon: Icon(
                              Icons.question_mark,
                            ),


                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:  Colors.green,
                      ),
                      width: 150,
                      height: 70,
                      child: IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoneScreen()
                          ),
                        );
                      },
                        icon:Icon(Icons.done_sharp,
                          color: Colors.white,
                          size: 50,
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