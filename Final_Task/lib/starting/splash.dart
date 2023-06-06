import 'dart:async';

import 'package:final_task/starting/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  static const Color purpleMain = Color.fromRGBO(168, 60, 131, 1);
  static const Color purplelight = Color.fromRGBO(190, 194, 199, 1);
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
          return LoginPage();
        }),
        )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        color: purplelight,
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                      "M\na\nn\ng\na",
                    style: TextStyle(
                      fontFamily: 'electroharmonix',
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 26, left: 10),
                  padding: EdgeInsets.all(5),
                  color: purpleMain,
                  child: Text(
                    "R\ne\na\nd\ne\nr",
                    style: TextStyle(
                        fontFamily: 'electroharmonix',
                        fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
            
            Expanded(
                flex: 1,
                child: SizedBox()),
            
            Container(
              width: 300.0,
              height: 300.0,
              child: Image(
                  image: AssetImage("assets/img/haciman.png")),
            ),

          ],
        ),
      ),
    );
  }
}
