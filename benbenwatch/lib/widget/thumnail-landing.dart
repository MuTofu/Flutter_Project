import 'package:flutter/cupertino.dart';

class ThumbnailLandingPage extends StatelessWidget {
  const ThumbnailLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),

      child: Column(
        children: [

          SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/thumbnail/images/eleina-bg.jpg",
                width: MediaQuery.of(context).size.width - 30,
                // height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          SizedBox(
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
