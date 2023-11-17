

import 'package:flutter/material.dart';

class customicon extends StatelessWidget{
  const customicon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:50 ,
      width: 50,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.1) ,borderRadius: BorderRadius.circular(15)),
      child: IconButton(
        icon:Icon(icon,size: 28,),

        onPressed: onPressed,
      ),
    );
  }
}