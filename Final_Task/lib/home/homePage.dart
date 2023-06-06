import 'package:final_task/home/book.dart';
import 'package:flutter/material.dart';

class berandaPage extends StatefulWidget {
  const berandaPage({Key? key}) : super(key: key);

  @override
  State<berandaPage> createState() => _berandaPageState();
}

class _berandaPageState extends State<berandaPage> {

  // Widget listItem(BuildContext context, int index) {
  //   return Container();
  // }
  //
  // List rating = [
  //   "4.5/5",
  //   "4.5/5",
  //   "4.5/5",
  //   "4.5/5",
  //   "4.5/5",
  // ];
  //
  // List img = [
  //   "assets/img/manga/1.jpg",
  //   "assets/img/manga/2.jpg",
  //   "assets/img/manga/3.jpg",
  //   "assets/img/manga/4.jpg",
  //   "assets/img/manga/5.jpg",
  // ];
  //
  // List judul = [
  //   "Attack on titan",
  //   "Your talent is mine",
  //   "Serial killer",
  //   "Demonic heart",
  //   "Boruto"
  // ];


  static const Color purpleMain = Color.fromRGBO(168, 60, 131, 1);
  static const Color purplelight = Color.fromRGBO(190, 194, 199, 1);
  static const Color opacity = Color.fromRGBO(108, 2, 66, 0.6627450980392157);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 900,
            child: Column(
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  // color: Colors.red,
                  child: Stack(
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage("assets/img/banner.png"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                opacity,
                                BlendMode.darken)
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Text(
                                "Selamat datang",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),

                        Text(
                          "Manga apa yang cocok buat mu hari ini? ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                              ),
                          textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Rekomendasi: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),

                Expanded(

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [


                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const bukuPage();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 220,
                                child: Stack(
                                  children: [

                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                          image: DecorationImage(
                                              image: AssetImage("assets/img/manga/1.jpg"),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        color: Colors.yellow,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "4.5/5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Attack on Titan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/2.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Your talent is mine",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/3.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Serial killer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/4.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Demonic Heart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/5.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Boruto",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/1.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Attack on Titan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),




                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Top manga: ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                ),

                Expanded(

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const bukuPage();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              
                              Container(
                                width: 150,
                                height: 220,
                                child: Stack(
                                  children: [

                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                          image: DecorationImage(
                                              image: AssetImage("assets/img/manga/1.jpg"),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        color: Colors.yellow,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "4.5/5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Attack on Titan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/2.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Your talent is mine",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/3.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Serial killer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/4.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Demonic Heart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/5.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Boruto",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 220,
                              child: Stack(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/manga/1.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.yellow,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "4.5/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Attack on Titan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                      ),




                    ],
                  ),
                )






              ],
            ),
          ),
        ),

      ),
    );
  }
}
