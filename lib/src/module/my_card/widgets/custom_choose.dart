import 'package:flutter/material.dart';

class CustomChooseAdrees extends StatelessWidget {
  final IconData? icons;
  final String? title; 
  const CustomChooseAdrees({super.key,this.icons,this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(icons),
       const SizedBox(
          width: 5,
        ),
        Text(title!,
         // 'Choose New Address',
          style:const  TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
