import 'package:allpay/src/module/notification/model/notification_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNotification extends StatelessWidget {
  final NotificationModel? notificationModel;
  const CustomNotification({Key? key, this.notificationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.01),
            spreadRadius: 0.1,
            blurRadius: 7,
            //offset: Offset(3, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://static.vecteezy.com/system/resources/previews/017/257/837/original/notification-golden-bell-cartoon-free-png.png',
            width: 40,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationModel!.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: 'poppins-regular',
                  ),
                ),
                Text(
                  notificationModel?.body ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                    fontFamily: 'poppins-regular',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
