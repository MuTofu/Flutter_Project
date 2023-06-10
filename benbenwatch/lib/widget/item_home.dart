import 'package:benbenwatch/page/movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemHomePage extends StatefulWidget {
  const ItemHomePage({Key? key}) : super(key: key);

  @override
  State<ItemHomePage> createState() => _ItemHomePageState();
}

class _ItemHomePageState extends State<ItemHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const MoviePage();
          }));
        },

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/thumbnail/images/poster1.jpg",
                fit: BoxFit.cover,
                width: 100,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            const Text(
              "Majo no Tabi Tabi",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            )

          ],
        ),
      ),
    );
  }
}
