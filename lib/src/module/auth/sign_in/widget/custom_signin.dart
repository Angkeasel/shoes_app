import 'package:flutter/material.dart';

class CustomSignin extends StatelessWidget {
  const CustomSignin({Key? key, this.image, this.title}) : super(key: key);
  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xffE0E0E0),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title!,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
