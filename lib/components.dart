import 'package:flutter/material.dart';

Widget defaultButton({
  required double width ,
  required Color background,
  required double hight,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      height: hight,
      child: MaterialButton(
        onPressed: function() ,
        child:  Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );

Widget defaulFormFild({
  required TextEditingController controller,
  required TextInputType type,
  required String label ,
  required IconData prefix,
  IconData? suffix,
  // required Function validate,
  required Function onSubmit,
  bool isPassword = false,
  Function? s, required String? Function(String value) validate,
}) =>  TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: (value){
    print(value);
  },
/*validator: (value)
{
if(value== value){
return 'not valid';
}
return null;
},*/
  decoration:  InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix,),
    suffixIcon: Icon(suffix,),
    border: const OutlineInputBorder(),
  ),
);

