import 'package:benbenwatch/widget/item_home.dart';
import 'package:flutter/cupertino.dart';

class ListviewHomePage extends StatefulWidget {
  const ListviewHomePage({Key? key}) : super(key: key);

  @override
  State<ListviewHomePage> createState() => _ListviewHomePageState();
}

class _ListviewHomePageState extends State<ListviewHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ItemHomePage();
      },
    );
  }
}
