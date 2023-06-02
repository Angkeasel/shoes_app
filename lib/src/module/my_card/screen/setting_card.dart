import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('',
          // "assets/svg/allpay.svg",
          height: 24,
          width: 24,
          fit: BoxFit.none,
        ),
        title: Row(
          children: [
            Text(
              "My Card",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
    );
  }
}
