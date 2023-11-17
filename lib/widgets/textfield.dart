import 'package:flutter/material.dart';

class textfieldinput extends StatelessWidget{
  @override
  const textfieldinput({super.key, required this.hint_text, this.max_line=1, this.onSaved,this.onChanged});
   final String hint_text;
  final int max_line;
  final Function(String)? onChanged;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
   return  TextFormField(
     onChanged: onChanged,
     onSaved: onSaved,
     validator: (value)
     {
       if(value?.isEmpty ?? true){
         return "Field is Required";
       }else
         {
           return null;
         }
     },
     maxLines:max_line ,
     decoration: InputDecoration(
       hintText: hint_text,
         hintStyle: const TextStyle(color:Colors.cyan ),
         border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(16)
     ),
         enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(16),
               borderSide: const BorderSide(color: Colors.white)
   ),
       focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: const BorderSide(color: Colors.cyan)
       ),

     ),

   );
  }

}