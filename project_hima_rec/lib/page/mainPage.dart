import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_hima_rec/model/item.dart';
import 'package:project_hima_rec/page/newTaskPage.dart';
import 'package:project_hima_rec/service/http.dart';
import 'package:project_hima_rec/widget/listText.dart';
import 'package:project_hima_rec/widget/listku.dart';

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  Service ServiceAPI = Service();
  late Future<List<ItemKu>> listku;


  @override
  void initState() {

    super.initState();
    listku = ServiceAPI.getData();
  }



  static const Color pink = Color.fromRGBO(255, 65, 110, 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.topLeft,
                    child: const Text(
                      "Get More Productivity",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold),

                    )),

                SizedBox(
                  height: 20,
                ),

                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.1,
                              blurRadius: 5,
                              offset: Offset(0,4)
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(

                              onPressed: (){
                                setState(() {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                                    return NewList();
                                  }));

                                });
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                size: 40,
                                color: Colors.grey,
                              ),
                            ),
                          ),

                          // ListView(
                          //   physics: NeverScrollableScrollPhysics(),
                          //   shrinkWrap: false,
                          //   children: [
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //     Text("data"),
                          //
                          //   ],
                          // ),
                          
                          FutureBuilder<List<ItemKu>>(
                            future: listku,
                              builder: (context, snapshot){
                              if (snapshot.hasData){
                                List<ItemKu> isiData = snapshot.data!;
                                return ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: isiData.length,
                                    itemBuilder: (context, index){
                                    return Listku(index : index, item: isiData[index]);

                                    },
                                    );
                                } else if (snapshot.hasError) {
                                return Text("${snapshot.error}");
                              };
                              return const CircularProgressIndicator();
                              }),

                          // ListView.builder(
                          //     physics: NeverScrollableScrollPhysics(),
                          //     shrinkWrap: true,
                          //     itemCount: listku.length,
                          //     itemBuilder: (context, id){
                          //       return Listku(id: id, item: item);
                          //     })


                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: pink,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text(
                        "To Do",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
