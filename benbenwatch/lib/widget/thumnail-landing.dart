import 'package:benbenwatch/Color/color.dart';
import 'package:flutter/cupertino.dart';

class ThumbnailLandingPage extends StatelessWidget {
  const ThumbnailLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),

      child: Column(
        children: [

          SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        AppColor().blackApp,
                        AppColor().transparentBlack
                      ]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstOut,
                child: Image.asset(
                  "assets/thumbnail/images/eleina-bg.jpg",
                  width: MediaQuery.of(context).size.width - 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          const SizedBox(
            child: Text(
              "Anime",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
                fontSize: 14
                // fontSize: 0.00008 * (MediaQuery.of(context).size.height * MediaQuery.of(context).size.width) ,
              ),
            ),
          )
        ],
      ),

    );
  }
}
