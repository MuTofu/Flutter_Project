import 'package:flutter/material.dart';
import 'package:project_hima_rec/model/item.dart';
import 'package:project_hima_rec/page/editPage.dart';
import 'package:project_hima_rec/page/listMenu.dart';

class Listku extends StatelessWidget {

  final int index;
  final ItemKu item;

  const Listku({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return ListMenu(item: item);
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          item.judul,
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
