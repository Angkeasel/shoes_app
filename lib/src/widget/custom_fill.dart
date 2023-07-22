import 'package:allpay/src/module/auth/forgot_password/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFillContact extends StatelessWidget {
  final Contactfill? contactfill;
  final bool? isSelect;
  final GestureTapCallback? onTap;
  const CustomFillContact({
    Key? key,
    this.contactfill,
    this.isSelect,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 82,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
              width: 1,
              color:
                  (isSelect == false) ? const Color(0xffF3F3F3) : Colors.blue),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                  height: 54,
                  width: 54,
                  //  color: const Color(0xff407BFF).withOpacity(0.1),
                  child: SvgPicture.asset(
                    contactfill!.svg!,
                    fit: BoxFit.cover,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contactfill!.title!,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Text(
                  contactfill!.text!,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRowSetting extends StatelessWidget {
  // final SettingModel? settingModel;
  final GestureTapCallback? onTap;
  const CustomRowSetting({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
            // SvgPicture.asset(
            //   settingModel!.svg!,
            //   height: 20,
            //   width: 20,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(
              width: 20,
            ),
            // Text(
            //   settingModel!.title!,
            //   style: GoogleFonts.poppins(
            //       fontSize: 16,
            //       fontWeight: FontWeight.w500,
            //       color: const Color(0xff5A4F4F)),
            // ),
            const Spacer(),
            SvgPicture.asset('assets/svg/arrow_right.svg')
          ],
        ),
      ),
    );
  }
}
