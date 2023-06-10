import 'package:benbenwatch/Color/color.dart';
import 'package:flutter/cupertino.dart';

class JumbotronMoviePage extends StatelessWidget {
  const JumbotronMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
          return LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                AppColor().blackApp,
                AppColor().transparentBlack
              ]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height - 40));
          },
      blendMode: BlendMode.darken,
      child: Image.asset(
        "assets/thumbnail/images/poster1.jpg",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),

        );
  }
}
