import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/page/home.dart';
import 'package:benbenwatch/page/home_test.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ]
          )
        ),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child: Text(
                    "Silahkan Masukkan user Benben ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 33,
                    ),
                    textAlign: TextAlign.left,
                    softWrap: true,
                  ),
                ),

                const SizedBox(
                  height: 70,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.white
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                            width: 3.0,
                            color: Colors.green
                        ),
                      )
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    obscureText: true,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.grey
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.white
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              width: 3.0,
                              color: Colors.green
                          ),
                        )
                    ),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 29,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                          return const HomeTest();
                        }));

                      },

                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor().greenApp,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      )),
                ),

                const SizedBox(
                  height: 20,
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
