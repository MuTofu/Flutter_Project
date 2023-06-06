import 'package:flutter/material.dart';
import 'package:project_hima_rec/model/item.dart';

class ListText extends StatefulWidget {
  final int index;
  final ItemKu item;

  const ListText({
  Key? key,
  required this.index,
  required this.item,
}) : super(key: key);



  @override
  State<ListText> createState() => _ListTextState();
}

class _ListTextState extends State<ListText> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
            "",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
