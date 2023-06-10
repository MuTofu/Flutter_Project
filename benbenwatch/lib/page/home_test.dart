import 'package:benbenwatch/page/more_movie.dart';
import 'package:benbenwatch/widget/search_bar.dart';
import 'package:flutter/material.dart';

import '../Color/color.dart';
import '../widget/item_home.dart';
import '../widget/jumbotron_home.dart';

class HomeTest extends StatefulWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  State<HomeTest> createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  final ScrollController _homeScrollController =  ScrollController();
  Color _appBarColor = Colors.transparent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _homeScrollController.addListener(() {
      if (_homeScrollController.offset > 10) {
        setState(() {
          _appBarColor = AppColor().blackApp;
        });
      } else {
        setState(() {
          _appBarColor = Colors.transparent;
        });
      }
    });
  }

  @override
  void dispose() {
    _homeScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.center,
                colors: [
                  AppColor().darkBlueApp,
                  AppColor().blackApp
                ])
        ),
        child: CustomScrollView(
          controller: _homeScrollController,
          slivers: [

            SliverAppBar(
              backgroundColor:_appBarColor,
              pinned: true,
              expandedHeight: 9,
              centerTitle: false,

              flexibleSpace: const FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 10, bottom: 16),
                title: Text(
                  "BenBenWatch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              
              actions: [
                IconButton(
                    onPressed: (){
                      showSearch(
                          context: context,
                          delegate: HomeSearchBar());
                    },
                    icon: const Icon(Icons.search))
              ],
              
            ),

            SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(
                      height: 20,
                    ),

                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "New Upload",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    const JumbotronHomePage(),

                    const SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Anime",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          const Expanded(child: SizedBox()),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return const MoreMoviePage();
                              }));
                            },
                            child: const Text(
                              "More >>",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 8,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return const ItemHomePage();
                          }),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Movie",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          const Expanded(child: SizedBox()),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return const MoreMoviePage();
                              }));
                            },
                            child: const Text(
                              "More >>",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 8,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return const ItemHomePage();
                          }),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Cartoon",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          const Expanded(child: SizedBox()),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return const MoreMoviePage();
                              }));
                            },
                            child: const Text(
                              "More >>",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 8,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return const ItemHomePage();
                          }),
                    ),
                  ]
                )
            )
          ],
        ),
      ),

    );
  }
}
