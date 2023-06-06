import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_hima_rec/model/item.dart';
import 'package:project_hima_rec/page/editPage.dart';
import 'package:project_hima_rec/page/mainPage.dart';

import '../service/http.dart';

class ListMenu extends StatefulWidget {
  final ItemKu item;
  const ListMenu({Key? key, required this.item}) : super(key: key);

  @override
  State<ListMenu> createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
              return ToDo();
            }));

          },
        ),
        title: Text(
          widget.item.judul,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(top: 30),
        child: ListView(
          shrinkWrap: true,
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                widget.item.judul,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                widget.item.deskripsi,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    children: [

                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 70,
                        height: 70,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return EditList(item: widget.item);
                                }));

                              });
                            },
                            child: Icon(
                              CupertinoIcons.pen,
                              color: Colors.black,
                            ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            backgroundColor: MaterialStateProperty.all(Colors.white)
                          ),

                        ),
                      ),

                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: (){
                              hapusData();
                            },
                            child: Icon(
                              CupertinoIcons.trash,
                              color: Colors.red,
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(CircleBorder()),
                                backgroundColor: MaterialStateProperty.all(Colors.white)
                            )
                        ),
                      )

                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
  void hapusData() async {
    bool respon = await Service.deleteData(widget.item.id);

    if (respon == true) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Berhasil")));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return ToDo();
          }));
    }
  }
}
