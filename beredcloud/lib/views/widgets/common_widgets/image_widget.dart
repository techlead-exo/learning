import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ImageWidget extends StatelessWidget {
  final String imageSource;

  ImageWidget({@required this.imageSource});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        child: CachedNetworkImage(
          imageUrl: imageSource,
          placeholder: (context, url) =>
              SpinKitRipple(size: 30, color: Colors.white),
          fit: BoxFit.cover,
        ));
  }
}
