// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_svg/svg.dart';

import '../constant/app_setting.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  final String? title;
  final GestureTapCallback? onPressed;
  final bool? isDisable;
  final bool? isOutline;
  final String? iconUrl;
  TextStyle? textStyle;
  final double? hight;
  CustomButton({
    Key? key,
    this.title,
    this.onPressed,
    this.isDisable,
    this.isOutline,
    this.iconUrl,
    this.textStyle,
    this.hight,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? SizedBox(
            height: widget.hight,
            width: double.infinity,
            child: CupertinoButton(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              color: AppColor.primaryColor,
              onPressed: widget.onPressed,
              child: Text(
                widget.title!,
                style: widget.textStyle,
                // style: Theme.of(context).textTheme.button,
              ),
            ),
          )
        : Platform.isAndroid
            ? SizedBox(
                height: widget.hight,
                width: double.infinity,
                child: !widget.isDisable! && !widget.isOutline!
                    ? CupertinoButton(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        color: AppColor.primaryColor,
                        onPressed: widget.onPressed,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            widget.iconUrl != null
                                ? SvgPicture.asset(widget.iconUrl!)
                                : Container(),
                            if (widget.iconUrl != null)
                              const SizedBox(
                                width: 15,
                              ),
                            Text(
                              widget.title!,
                              // style: Theme.of(context).textTheme.button,
                              style: widget.textStyle,
                            ),
                          ],
                        ),
                      )
                    : widget.isOutline! && !widget.isDisable!
                        ? OutlinedButton(
                            onPressed: widget.onPressed,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                widget.iconUrl != null
                                    ? SvgPicture.asset(widget.iconUrl!)
                                    : Container(),
                                if (widget.iconUrl != null)
                                  const SizedBox(
                                    width: 15,
                                  ),
                                Text(
                                  widget.title!,
                                  style: widget.textStyle,
                                ),
                              ],
                            ),
                          )
                        : widget.isDisable! && !widget.isOutline!
                            ? CupertinoButton(
                                onPressed: null,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(24)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                child: Text(widget.title!,
                                    // style: Theme.of(context).textTheme.button,
                                    style: widget.textStyle),
                              )
                            : widget.isDisable! && widget.isOutline!
                                ? const OutlinedButton(
                                    onPressed: null,
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius:
                                    //         BorderRadius.circular(8.0)),
                                    child: Text('Save Draft'),
                                  )
                                : CupertinoButton(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(24)),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    color: AppColor.primaryColor,
                                    onPressed: widget.onPressed,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        widget.iconUrl != null
                                            ? SvgPicture.asset(widget.iconUrl!)
                                            : Container(),
                                        if (widget.iconUrl != null)
                                          const SizedBox(
                                            width: 15,
                                          ),
                                        Text(
                                          widget.title!,
                                          // style: Theme.of(context)
                                          //     .textTheme
                                          //     .button,
                                          style: widget.textStyle,
                                        ),
                                      ],
                                    ),
                                  ),
              )
            : Platform.isIOS
                ? SizedBox(
                    height: widget.hight,
                    width: double.infinity,
                    child: !widget.isDisable! && !widget.isOutline!
                        ? CupertinoButton(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            // padding: const EdgeInsets.symmetric(horizontal: 0),
                            color: AppColor.primaryColor,
                            onPressed: widget.onPressed,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                widget.iconUrl != null
                                    ? SvgPicture.asset(widget.iconUrl!)
                                    : Container(),
                                if (widget.iconUrl != null)
                                  const SizedBox(
                                    width: 15,
                                  ),
                                Text(
                                  widget.title!,
                                  style: widget.textStyle,
                                  // style: Theme.of(context).textTheme.button,
                                ),
                              ],
                            ),
                          )
                        : widget.isOutline! && !widget.isDisable!
                            ? GestureDetector(
                                onTap: widget.onPressed,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Theme.of(context).primaryColor),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      widget.iconUrl != null
                                          ? SvgPicture.asset(widget.iconUrl!)
                                          : Container(),
                                      if (widget.iconUrl != null)
                                        const SizedBox(
                                          width: 15,
                                        ),
                                      Text(
                                        widget.title!,
                                        // style: const TextStyle(
                                        //     // fontFamily: 'DMSans',
                                        //     fontSize: 16,
                                        //     fontWeight: FontWeight.bold,
                                        //     color: Colors.amber),
                                        style: widget.textStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : widget.isDisable! && !widget.isOutline!
                                ? CupertinoButton(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(24)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0),
                                    color: AppColor.primaryColor,
                                    onPressed: null,
                                    child: Text(
                                      widget.title!,
                                      // style: Theme.of(context).textTheme.button,
                                      style: widget.textStyle,
                                    ),
                                  )
                                : CupertinoButton(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(24)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0),
                                    color: AppColor.primaryColor,
                                    onPressed: null,
                                    child: Text(
                                      widget.title!,
                                      // style: Theme.of(context).textTheme.button,
                                      style: widget.textStyle,
                                    ),
                                  ),
                  )
                : Container();
  }
}
