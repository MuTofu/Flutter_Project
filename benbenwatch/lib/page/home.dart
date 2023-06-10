import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/widget/item_home.dart';
import 'package:benbenwatch/widget/jumbotron_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _homeScrollController =  ScrollController();
  Color _appBarColor = Colors.transparent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _homeScrollController.addListener(() {
      if (_homeScrollController.offset > 100) {
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
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: _appBarColor,
        title: Text(
            "BenBenWatch",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),
        ),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.center,
              colors: [
                AppColor().darkBlueApp,
                AppColor().blackApp
              ])
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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

              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Anime",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Text(
                      "Selengkapnya",
                      style: TextStyle(
                          color: Colors.grey,
                        fontSize: 12
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

              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Movie",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Text(
                      "Selengkapnya",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
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

              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Cartoon",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Text(
                      "Selengkapnya",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
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

            ],
          ),
        ),
      ),
    );
  }
}
