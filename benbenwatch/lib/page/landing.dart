import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/widget/thumnail-landing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(
                height: 80,
              ),

              SizedBox(
                child: CarouselSlider.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, index, viewIndex) => const ThumbnailLandingPage(),
                    options: CarouselOptions(
                      aspectRatio: 2/1.6,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          curentIndex = index;
                        });
                      },
                    ),
                ),
              ),

              
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Text(
                    "Akses layanan film  Benben dengan gratis",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Nonton berbagai film secara gratis hanya dengan berlangganan benben ",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width - 35,
                child: ElevatedButton(
                    onPressed: (){

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

              SizedBox(
                height: 40,
              )
              
            ],
          ),
        ),
      )

    );
  }
}
