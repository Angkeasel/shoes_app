import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewFullScreen extends StatelessWidget {
  final String? urlImage;
  final bool isUrl;
  final String tag;
  const ImageViewFullScreen(
      {super.key, this.urlImage, this.isUrl = true, this.tag = ''});

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
                : AssetImage("$urlImage") as ImageProvider<Object>,
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
