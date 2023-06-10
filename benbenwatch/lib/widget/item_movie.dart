import 'package:flutter/material.dart';

class ItemMoviePage extends StatefulWidget {
  const ItemMoviePage({Key? key}) : super(key: key);

  @override
  State<ItemMoviePage> createState() => _ItemMoviePageState();
}

class _ItemMoviePageState extends State<ItemMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 8),
      child: InkWell(
        onTap: (){

        },
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [

                SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                        "assets/thumbnail/images/profile.jpg",
                      fit: BoxFit.cover,
                      color: Colors.black45,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ),

                const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),


            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                        "Episode 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.white,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                        '26.00',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
