import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/widget/jumbotron_movie.dart';
import 'package:flutter/material.dart';

import '../widget/item_movie.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor().blackApp,
            pinned: true,
            expandedHeight: 340,
            leading: IconButton(
              color: Colors.black,
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),

            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Majo no Tabi Tabi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(
                    height: 3,
                  ),

                  Text(
                    "Anime - 12 Episode",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 8,
                    ),
                  ),
                ],
              ),
              
              background: JumbotronMoviePage(
              ),
            ),
          ),

          SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        ElevatedButton.icon(
                            onPressed: (){

                            },
                          icon: const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.black,
                          ),
                          label: const Text(
                            "Play",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor().greenApp,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)))
                          ),
                            ),

                        const SizedBox(
                          width: 20,
                        ),



                        ElevatedButton.icon(
                          onPressed: (){

                          },
                          icon: const Icon(
                            Icons.download_outlined,
                            color: Colors.black,
                          ),
                          label: const Text(
                            "Download",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(3))
                            )
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    child: Text(
                      "Synopsis",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    child: Text(
                      "Terpesona tentang kisah Niké, seorang penyihir yang menjelajahi dunia, Elaina bertekad untuk mengambil jalan yang sama. Tekadnya untuk mempelajari buku dan sihir membuat Elaina menjadi penyihir termuda yang lulus dari ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    child: Text(
                      "Episode",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  ListView.builder(
                      itemCount: 12,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        return const ItemMoviePage();
                      })





                ]
              )
          )
        ],
      ),

    );
  }
}
