import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/widget/item_home.dart';
import 'package:benbenwatch/widget/search_bar.dart';
import 'package:flutter/material.dart';

class MoreMoviePage extends StatefulWidget {
  const MoreMoviePage({Key? key}) : super(key: key);

  @override
  State<MoreMoviePage> createState() => _MoreMoviePageState();
}

class _MoreMoviePageState extends State<MoreMoviePage> {
  final ScrollController _moreScrollController = ScrollController();
  Color _appBarColor = Colors.transparent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _moreScrollController.addListener(() {
      if (_moreScrollController.offset > 10) {
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
    _moreScrollController.dispose();
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
            ]
          )
        ),
        child: CustomScrollView(
          controller: _moreScrollController,
          slivers: [
            SliverAppBar(
              backgroundColor: _appBarColor,
              pinned: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: (){
                  Navigator.of(context).pop();

                },
              ),
              flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  "Anime",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
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

            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, index) {
                      return const ItemHomePage();
                    },
                  childCount: 12
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 0.56,
                ),
            )
          ],
        ),
      ),
    );
  }
}
