import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/page/movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JumbotronHomePage extends StatefulWidget {
  const JumbotronHomePage({Key? key}) : super(key: key);

  @override
  State<JumbotronHomePage> createState() => _JumbotronHomePageState();
}

class _JumbotronHomePageState extends State<JumbotronHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        SizedBox(
          child: ShaderMask(
            shaderCallback: (rect){
              return LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColor().blackApp,
                    AppColor().transparentBlack
                  ]). createShader(Rect.fromLTRB(0, 0, rect.width, rect.height - 25));
            },
            blendMode: BlendMode.darken,
            child: Image.asset(
                "assets/thumbnail/images/eleina-bg.jpg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          bottom: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Majo no Tabi Tabi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              Text(
                "Anime - 12 Episode",
                style: TextStyle(
                  color: CupertinoColors.inactiveGray,
                  fontSize: 11
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: 10,
          child: FloatingActionButton.small(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return MoviePage();
                }));

              },
              backgroundColor: AppColor().greenApp,
              child: const Icon(Icons.play_arrow_outlined),
              ),
        )
      ],

    );
  }
}
