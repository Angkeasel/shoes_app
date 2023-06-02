import 'package:allpay/src/module/transfer/model/model.dart';
import 'package:flutter/material.dart';

class CustomUserTransfer extends StatelessWidget {
  CustomUserTransfer({Key? key, this.model, this.onTap}) : super(key: key);
  TransferModel? model;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 2),
        height: 75,
        width: MediaQuery.of(context).size.width,
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                    "${model!.image}",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          title: Text("${model!.title}"),
          subtitle: Text("${model!.bank} | ${model!.account}"),
          trailing: SizedBox(
              height: 20, width: 20, child: Image.asset("${model!.star}")),
        ),
      ),
    );
  }
}
