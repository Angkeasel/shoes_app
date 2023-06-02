import 'package:allpay/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPassWordScreen extends StatelessWidget {
  const NewPassWordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/svg/arrowBack.svg",
            fit: BoxFit.none,
          ),
        ),
        title: Text(
          "Create New Password",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 335,
                  child:
                      SvgPicture.asset("assets/svg/Secure data-rafiki 2.svg"),
                ),
                const SizedBox(
                  height: 68,
                ),
                Container(
                  height: 50,
                ),
                Container(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Remember Me",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: CustomButton(
              hight: 50,
              title: 'Next',
              textStyle: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
              isOutline: false,
              isDisable: false,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SecurityOTP(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
