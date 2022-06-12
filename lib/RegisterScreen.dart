import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gtgapplication/RegisterScreen.dart';
import 'package:gtgapplication/SubjectScreen.dart';
import 'package:gtgapplication/login.dart';


class RegisterScreen extends StatefulWidget{

  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool showProgress = false;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  CollectionReference ref = FirebaseFirestore.instance.collection('users');
  final TextEditingController NameController = new TextEditingController();
  final TextEditingController BirthDateController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController = new TextEditingController();
  final TextEditingController name = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;
  File? file;


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
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 40),
                        child: Image(

                          image: NetworkImage(
                              'https://i.ibb.co/Bs2Wngf/GTG.png'
                          ),
                          height: 130,
                          width: 260,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Enter your Name:',

                          style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.w600 ),
                        ),
                      ),
                      TextFormField(
                        controller: NameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Name',
                          enabled: true,
                          prefixIcon: Icon(
                            Icons.abc_sharp,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length == 0) {
                            return "Name cannot be empty";
                          }
                          else {
                            return null;
                          }
                        },
                        onChanged: (value) {},
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment:Alignment.topLeft,
                        child: Text('Date of birth:',

                          style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.w600 ),
                        ),
                      ),
                      TextFormField(
                        controller: BirthDateController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabled: true,
                          border:InputBorder.none,
                          hintText: 'Date of birth',

                          prefixIcon: Icon(
                            Icons.date_range,
                          ),

                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length == 0) {
                            return "Enter your birthdate ";
                          }
                          else {
                            return null;
                          }
                        },
                        onChanged: (value) {},
                        keyboardType: TextInputType.datetime,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Enter your email address:',

                          style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.w600 ),
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email Address:',
                          enabled: true,
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length == 0) {
                            return "Email cannot be empty";
                          }
                          if (!RegExp(
                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return ("Please enter a valid email");
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {},
                        keyboardType: TextInputType.emailAddress,
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Enter your password:',

                          style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.w600 ),
                        ),
                      ),
                      TextFormField(
                        obscureText: _isObscure,
                        controller: passwordController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          enabled: true,
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 15.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          RegExp regex = new RegExp(r'^.{6,}$');
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }
                          if (!regex.hasMatch(value)) {
                            return ("please enter valid password min. 6 character");
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Confirm your password:',

                          style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.w600 ),
                        ),
                      ),
                      TextFormField(
                        obscureText: _isObscure2,
                        controller: confirmpassController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure2
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscure2 = !_isObscure2;
                                });
                              }),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Confirm Password',
                          enabled: true,
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 15.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (confirmpassController.text !=
                              passwordController.text) {
                            return "Password did not match";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(

                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color:  Colors.green,
                        ),

                        width: 120,
                        height: 60,

                        child: IconButton(onPressed: (){

                          setState(() {
                            showProgress = true;
                          });
                          signUp(
                            emailController.text,
                            passwordController.text,
                          );
                        },

                          icon:Text('Register',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),

                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  signUp(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: email,
          password: password,
        )
            .whenComplete(() => {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => LoginScreen(),
            ),
          )
        }
        );
        if(userCredential != null){
          print('success');
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    CircularProgressIndicator();
  }

}
