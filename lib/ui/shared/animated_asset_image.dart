import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimatedAssetImage extends StatelessWidget {
  final String path;
  final Function onPressed;
  final int delay;
  final double heigth;
  final double width;
  final double paddingTop;

  const AnimatedAssetImage({
    Key? key,
    required this.path,
    required this.onPressed,
    required this.delay,
    this.heigth = 60,
    this.width = 60,
    this.paddingTop = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 2000),
      from: 20,
      delay: Duration(milliseconds: delay),
      child: InkWell(
          onTap: () => onPressed(),
          child: Container(
            padding: EdgeInsets.only(top: paddingTop),
            height: heigth,
            child: Image(image: AssetImage('assets/images/$path.png')),
          )),
    );
  }
}
