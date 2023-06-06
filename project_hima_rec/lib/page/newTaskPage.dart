import 'package:flutter/material.dart';
import 'package:project_hima_rec/page/mainPage.dart';
import 'package:project_hima_rec/service/http.dart';

class NewList extends StatefulWidget {
  const NewList({Key? key}) : super(key: key);

  @override
  State<NewList> createState() => _NewListState();
}

class _NewListState extends State<NewList> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController judulController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();



  static const Color pink = Color.fromRGBO(255, 65, 110, 1);
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
        title: const Text(
          "New Task",
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
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              TextFormField(
                controller:  judulController,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
                cursorColor: pink,
                decoration: InputDecoration(
                    labelText: "Judul",
                    floatingLabelStyle: TextStyle(
                      color: Colors.pink,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.grey
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.grey
                      ),
                    )
                ),

              ),

              SizedBox(
                height: 40,
              ),

              TextFormField(
                controller: deskripsiController,
                minLines: 1,
                maxLines: 100,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
                cursorColor: pink,
                decoration: InputDecoration(
                    labelText: "Deskripsi",
                    floatingLabelStyle: TextStyle(
                      color: Colors.pink,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.grey
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.grey
                      ),
                    )
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                        return ToDo();
                      }));

                    },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 2.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),

                            )
                        ),
                        child: Text(
                          "Batal",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(onPressed: (){
                      tambahData();

                    },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),

                            )
                        ),
                        child: Text(
                          "Simpan",
                        )
                    ),
                  )

                ],
              )


            ],
          ),
        ),
      ),
    );
  }
  void tambahData() async {
    bool respon = await Service.uploadData(judulController.text, deskripsiController.text);

    if (respon == true) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Berhasil")));
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
        return ToDo();
      }));
    }

  }
}
