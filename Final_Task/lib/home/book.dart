import 'package:flutter/material.dart';

class bukuPage extends StatefulWidget {
  const bukuPage({Key? key}) : super(key: key);

  @override
  State<bukuPage> createState() => _bukuPageState();
}

class _bukuPageState extends State<bukuPage> {

  static const Color purpleMain = Color.fromRGBO(168, 60, 131, 1);
  static const Color purplelight = Color.fromRGBO(190, 194, 199, 1);
  static const Color opacity = Color.fromRGBO(
      255, 255, 255, 0.4666666666666667);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
            "Attack on titan",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        actions: [Icon(
            Icons.more_horiz,
          color: Colors.black,
        )],
        backgroundColor: Colors.white,
      ),

      body: Container(

        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/img/manga/bg1.jpg"),
                              fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    opacity,
                                    BlendMode.lighten)
                            )
                          ),
                        ),

                        Container(
                          height: 250,
                          width: 180,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage("assets/img/manga/1.jpg"),
                                  fit: BoxFit.cover
                              ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                          "Sinopsis",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      )
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called Titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal Titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.After witnessing a horrific personal loss at the hands of the invading creatures, Eren Yeager dedicates his life to their eradication by enlisting into the Survey Corps, an elite military unit that combats the merciless humanoids outside the protection of the walls. Eren, his adopted sister Mikasa Ackerman, and his childhood friend Armin Arlert join the brutal war against the Titans and race to discover a way of defeating them before the last walls are breached. Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called Titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal Titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.After witnessing a horrific personal loss at the hands of the invading creatures, Eren Yeager dedicates his life to their eradication by enlisting into the Survey Corps, an elite military unit that combats the merciless humanoids outside the protection of the walls. Eren, his adopted sister Mikasa Ackerman, and his childhood friend Armin Arlert join the brutal war against the Titans and race to discover a way of defeating them before the last walls are breached.",
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
            ),


            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 30, top: 10),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                  });
                },
                style: ElevatedButton.styleFrom(
                    primary: purpleMain,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                child: Text("Baca"),

              ),
            )
          ],
        ),
      ),

    );
  }
}
