import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFiled extends StatelessWidget {
  final double? height;
  final double? width;
  final String? title;
  final int? maxLines;
  final String? titleError;
  final Widget? suffixIcon;
  final String? labelText;
  final String? hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintTextStyle;
  final bool? isValidate;
  final String? initialValues;
  final Color? fillcolor;
  final ValueChanged<String>? onChanges;
  final bool? isSelected;
  final bool? autoFocus;
  final bool? isObscureText;
  final bool? autocorrect;
  final TextInputAction? textInputAction;
  final String? label;
  final bool? enable;
  final bool? validate;
  final bool? isReadOnly;
  final FormFieldSetter<String>? onSave;
  final FormFieldSetter<String>? onSubmit;
  final TextEditingController? controller;
  final GlobalKey<FormState>? forkey;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final Function? function;
  final Widget? prifixIcon;
  final int? maxlenght;
  final Function? onTap;
  final String? obscuringCharacter;

  const CustomTextFiled({
    Key? key,
    this.onTap,
    this.height,
    this.width,
    this.isObscureText = false,
    this.autoFocus = false,
    this.autocorrect,
    this.maxlenght,
    this.obscuringCharacter,
    this.validate = false,
    this.label,
    this.style,
    this.suffixIcon,
    this.titleError,
    this.isReadOnly,
    this.enable,
    this.hintTextStyle,
    this.textInputAction,
    this.isValidate = false,
    this.prifixIcon,
    this.title,
    this.function,
    this.maxLines,
    this.labelText,
    this.hintText,
    this.initialValues,
    this.inputFormatters,
    this.onChanges,
    this.onSubmit,
    this.labelStyle,
    this.fillcolor,
    this.isSelected = false,
    this.controller,
    this.onSave,
    this.forkey,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
          //color: Colors.red,
          height: 77,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(title??"",style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                
                obscureText: isObscureText!,
                maxLength: maxlenght,
                controller: controller,
                initialValue: controller == null ? initialValues : null,
                onSaved: onSave,
                autocorrect: true,
                autofocus: autoFocus ?? false,
                showCursor: true,
                onFieldSubmitted: onSubmit,
                onChanged: onChanges,
                inputFormatters: inputFormatters,
                style: style,
                textInputAction: textInputAction ?? TextInputAction.done,
                autovalidateMode: AutovalidateMode.always,
                enabled: enable,
                keyboardType: keyboardType,
                onTap: () {},
                readOnly: isReadOnly ?? false,
                decoration: InputDecoration(
                
                   //border:  InputBorder.none,
                    counterText: '',
                    alignLabelWithHint: true,
                    suffixIcon: suffixIcon,
                    prefixIcon: prifixIcon,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintText: hintText,
                    hintStyle: hintTextStyle,
                    fillColor:
                        initialValues == '' || enable == false || isReadOnly == true
                            ? Colors.white
                            : const Color(0xffF2F2F2),
                    // fillColor:isSelected!? Colors.white: Colors.grey.shade200,
                    filled: true,
                    hintMaxLines: 100,
                    labelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: isValidate == false
                              ? const Color(0xffF3F3F3)
                              : Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: isValidate == false
                        ? OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.red)),
                    disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ],
          ),
        );
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
        
    //     const SizedBox(height: 10),
    //     isValidate!
    //         ? Row(
    //             children: const [
    //               // const Icon(
    //               //   Icons.error,
    //               //   color: Colors.red,
    //               //   size: 18,
    //               // ),

    //               Text(
    //                 "your password is not enought",
    //                 style: TextStyle(color: Colors.red, fontSize: 14),
    //               ),
    //             ],
    //           )
    //         : Container(),
    //     const SizedBox(height: 50),
    //   ],
    // );
  }
}
