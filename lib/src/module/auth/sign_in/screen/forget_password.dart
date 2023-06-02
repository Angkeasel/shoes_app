import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../widget/custom_text.dart';




class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Forgot Password",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 32),
            ),
            const SizedBox(height: 8,),
            Text(
              "Enter your phone number to reset your password",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w400, color: const Color(0xff707B81)),
            ),
             const SizedBox(height: 40,),
            CustomTextFiled(
                        // controller: controllerPassword,
                        hintText: 'password',
                        maxlenght: 8,
                        isObscureText: true,
                        // prifixIcon: _controller.isPassword.value == ""
                        //     ? Image.asset("assets/png/Lock.png")
                        //     : Image.asset("assets/png/Lock._bluepng.png"),
                        // suffixIcon: _controller.isPassword.value == ""
                        //     ? Image.asset("assets/png/eye_grey.png")
                        //     : Image.asset("assets/png/fill_eye_blue.png"),
                        //initialValues: controllerPassword.text,
                        labelText: 'password',
                        isValidate: false,
                        onChanges: (ps) {
                          //  _controller.isPassword.value = ps;
                        },
                      ),
                       const SizedBox(height: 40,),
                       CustomButtons(
                        title: 'Reset Password',
                        onTap: (){
                          context.push("/otp");
                        },
                      ),
                      
          ],
        ),
      ),
    );
  }
}
