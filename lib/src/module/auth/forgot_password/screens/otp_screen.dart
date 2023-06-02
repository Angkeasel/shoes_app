import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SecurityOTP extends StatelessWidget {
  const SecurityOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
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
            "Forgot Password",
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(
            top: 50,
            right: 20,
            left: 20,
          ),
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Center(
                  child: SizedBox(
                height: 170,
                // width: 100,
                child:
                    SvgPicture.asset('assets/svg/noun-live-chat-863805 1.svg'),
              )),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Code has beeb send to +1 111******99',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 48),
                child: PinCodeTextField(
                  pinTheme: PinTheme(
                    selectedColor: AppColor.primaryColor,
                    activeColor: AppColor.primaryColor,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 70,
                    inactiveColor: Colors.grey[300],
                    errorBorderColor: Colors.red,
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  appContext: (context),
                  length: 4,
                  onChanged: (e) {},
                  pastedTextStyle: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  autoFocus: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don’t reveive the OTP? ',
                  ),
                  Text(
                    'Rensend Code ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
