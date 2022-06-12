import 'package:flutter/material.dart';
import 'package:gtgapplication/DoneScreen.dart';
import 'components.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;



class UploadFile extends StatefulWidget
{
  const UploadFile({Key? key}) : super(key: key);

  @override
  State<UploadFile> createState() => UploadFileState();
}

class UploadFileState extends State<UploadFile> {


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 11,
        leading: IconButton(onPressed: (){},
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


                  // padding: const EdgeInsets.only(left:70 ,top:0 ,right: 70,bottom:20 ,),
                  Padding(

                    padding: const EdgeInsets.only(left:0 ,top:120,right: 0,bottom:0 ,),
                    child:Container(decoration: BoxDecoration(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:0 ,top:30 ,right: 0,bottom:0 ,),
                    child: Container(

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:  Colors.deepPurple,
                      ),

                      width: 250,
                      height: 60,

                      child:Container(
                        alignment: Alignment.center,
                        child:
                        Text('Upload file',
                          style: TextStyle(fontSize: 30,
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

                          child: Icon(
                              Icons.upload_file,
                            size: 40,
                          ),

                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.only(left:0 ,top:20,right: 0,bottom:0 ,),
                      child: Container(
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

                          icon:Text('Upload',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                      )
                  )
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}