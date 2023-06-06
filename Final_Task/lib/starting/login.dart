import 'package:final_task/home/homePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  static const Color purpleMain = Color.fromRGBO(168, 60, 131, 1);
  static const Color purplelight = Color.fromRGBO(190, 194, 199, 1);
  final GlobalKey<FormState> formkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/img/bg_login.jpg"),
                fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox()),

            // Container(
            //   alignment: Alignment.centerLeft,
            //   margin: EdgeInsets.only(top: 30, left: 10),
            //   child: Text(
            //     "Halo!",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 45,
            //     ),
            //   ),
            // ),
            // Container(
            //   alignment: Alignment.centerLeft,
            //   margin: EdgeInsets.only(left: 12),
            //   child: Text(
            //     "Silahkan masukkan akun",
            //     style: TextStyle(
            //       fontSize: 15,
            //     ),
            //   ),
            // ),



            Expanded(
                flex: 1,
                child: SizedBox()),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 15, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
                color: Colors.white
              ),
              child: Form(
                key: formkey,
                  child: Column(
                    children: [

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 30, left: 10),
                        child: Text(
                          "Halo!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 12, bottom: 40),
                        child: Text(
                          "Silahkan masukkan akun",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),


                      TextFormField(
                        cursorColor: purpleMain,
                        decoration: InputDecoration(
                          labelText: "Masukkan Username",
                          floatingLabelStyle: const TextStyle(
                            color: purpleMain,
                          ),

                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.grey
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              width: 1,
                              color: purpleMain,
                            )
                          ),

                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              width: 1,
                              color: purpleMain,
                            )
                          ),
                        ),
                        validator: (String? value){
                          if (value?. isEmpty ?? true){
                            return "Username tidak boleh kosong";
                          }
                          // if (value?.toString() != "cahya" ?? true){
                          //   return "Username invalid";
                          // }
                          return null;
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: TextFormField(
                          cursorColor: purpleMain,
                          decoration: InputDecoration(
                              labelText: "Masukkan Password",
                              floatingLabelStyle: const TextStyle(
                                color: purpleMain,
                              ),

                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey
                                ),
                              ),

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: purpleMain,
                                  )
                              ),

                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: purpleMain,
                                  )
                              )
                          ),
                          validator: (String? value){
                            if (value?. isEmpty ?? true){
                              return "Password tidak boleh kosong";
                            }
                            // if (value?.toString() != "test" ?? true){
                            //   return "Password invalid";
                            // }
                            return null;
                          },
                          obscureText: true,
                        ),
                      ),


                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 90, top: 70),
                        child: ElevatedButton(
                          onPressed: (){
                            if(formkey.currentState!.validate()) {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                                return berandaPage();
                              }));

                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: purpleMain,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                          child: Text("Login"),

                        ),
                      )

                    ],
                  )),
            )
          ],
        ),
      ),

    );
  }
}
