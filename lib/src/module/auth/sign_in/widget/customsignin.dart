import 'package:flutter/material.dart';

class CustomSigninAccoun extends StatelessWidget {
  const CustomSigninAccoun({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      alignment: Alignment.center,
      height: 50,
      width: 66,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Image.asset(image!),
    );
  }
}
