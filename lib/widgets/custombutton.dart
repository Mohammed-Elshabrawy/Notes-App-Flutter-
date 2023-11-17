import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key,  this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.cyan),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child:  Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  "Add",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
        ),
      ),
    );
  }
}
