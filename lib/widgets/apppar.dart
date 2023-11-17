
import 'package:flutter/material.dart';

import 'customicon.dart';

class apppar extends StatelessWidget{
  const apppar({super.key, required this.title, required this.icon,this.onPressed});

   final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
   return  Padding(
     padding:  const EdgeInsets.fromLTRB(20, 0, 20, 0),
     child: Row(
             children: [
                Text(title,style: const TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                const Spacer(),
               customicon(
                   onPressed: onPressed,
                   icon: icon)
               ,
             ],
           ),
   );
  }
}