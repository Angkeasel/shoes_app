import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../module/notification/controller/controller_notification.dart';

class CustomNotification extends StatelessWidget {
  final NotificationModel? notificationModel;
  const CustomNotification({Key? key, this.notificationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.01),

            blurRadius: 7,
            //offset: Offset(3, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            notificationModel!.svg!,
            height: 75,
            width: 75,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationModel!.title!,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                notificationModel!.text!,
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
