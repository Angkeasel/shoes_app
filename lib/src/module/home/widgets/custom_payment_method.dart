import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomPaymentMethod extends StatelessWidget {
  final String? title;
  final double? total;
  const CustomPaymentMethod({super.key, this.title, this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
       
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/png/sack-dollar.png',height: 20,),
         const SizedBox(width: 10),
          Text(
            title ?? "",
            style:const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
         const Spacer(),
        Text(  "\$${NumberFormat('###0.00').format(total)}",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blueAccent, fontFamily: 'poppins-regular',),
        ),
         
        ],
      ),
    );
  }
}
