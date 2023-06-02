import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardVerifyDetail extends StatelessWidget {
  const CustomCardVerifyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            'Cambodia',
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
