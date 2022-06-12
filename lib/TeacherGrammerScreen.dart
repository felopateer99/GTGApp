import 'package:flutter/material.dart';
import 'package:gtgapplication/UploadVideo.dart';
import 'package:gtgapplication/UploadFile.dart';
import 'components.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

// ignore: must_be_immutable
class TeacherGrammerScreen extends StatefulWidget
{
  const TeacherGrammerScreen({Key? key}) : super(key: key);

  @override
  State<TeacherGrammerScreen> createState() => _TeacherGrammerScreenState();
}

class _TeacherGrammerScreenState extends State<TeacherGrammerScreen> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                 Container(
                   decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color:  Colors.deepPurple,
                    ),
                      width: 180,
                      height: 60,

                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Text('English',
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

                      width: 250,
                      height: 60,

                      child:Container(
                        alignment: Alignment.center,
                        child:
                        Text('Grammer',
                          style: TextStyle(fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold ),
                        ),

                      ),
                    ),
                  SizedBox(
                    height: 60.0,
                  ),
                  const Image(
                    image: NetworkImage(
                        'https://www.freeiconspng.com/thumbs/pdf-icon-png/pdf-icon-png-pdf-zum-download-2.png'
                    ),
                    height: 90,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10.0,
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
                              builder: (context) => UploadFile()
                          ),
                        );
                      },
                        child: Text('Upload PDF',

                            style:TextStyle(fontSize: 24,
                              color: Colors.white,)
                        ),
                      )
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  const Image(
                    image: NetworkImage(
                        'https://mpng.subpng.com/20180802/lez/kisspng-youtube-kids-kids-app-mobile-app-computer-icons-%D8%AE%D9%86%D8%AF%D9%87-%DA%A9%D8%AF%D9%87-5b63cf24797c46.2911630015332677484976.jpg'
                    ),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10.0,
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
                              builder: (context) => UploadVideo()
                          ),
                        );
                      },
                        child: Text('Upload Video',
                            style:TextStyle(fontSize: 24,
                              color:Colors.white,)
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