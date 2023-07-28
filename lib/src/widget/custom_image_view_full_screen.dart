import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewFullScreen extends StatelessWidget {
  final String? urlImage;
  final bool isUrl;
  final String tag;
  final String? imageFile;
  final bool isImageFile;
  const ImageViewFullScreen({
    super.key,
    this.urlImage,
    this.isUrl = true,
    this.tag = '',
    this.imageFile,
    this.isImageFile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhotoView(
            imageProvider: isUrl == true
                ? NetworkImage(
                    "$urlImage",
                  )
                : isImageFile == false
                    ? const AssetImage("assets/image/profile.png")
                        as ImageProvider<Object>
                    : FileImage(
                        File('$imageFile'),
                      ),
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.close,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
