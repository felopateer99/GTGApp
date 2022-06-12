import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gtgapplication/SubjectScreen.dart';
import 'package:gtgapplication/login.dart';

class DatabaseScreen extends StatefulWidget
{
  const DatabaseScreen({Key? key}) : super(key: key);

  @override
  State<DatabaseScreen> createState() => DatabaseScreenState();
}

class DatabaseScreenState extends State<DatabaseScreen> {
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return SubjectScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );

  }

}