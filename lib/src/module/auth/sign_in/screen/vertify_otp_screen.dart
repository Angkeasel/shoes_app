// ignore_for_file: prefer_const_constructors

import 'package:allpay/src/widget/custom_text.dart';
import 'package:flutter/material.dart';

class VertifyOTPScreen extends StatelessWidget {
  const VertifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
     elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Text("OTP Verification", style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700, fontSize: 32
            ),),
            const SizedBox(height: 10,),
            Text("We have send verify Code to +85593339596",
            textAlign: TextAlign.center,
             style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400, color: const Color(0xff707B81)
            ),),
            CustomTextFiled(
            
            )
          ],
        ),
      ),
    );
  }
}