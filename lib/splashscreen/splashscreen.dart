import 'package:cooking_app/appcolor.dart';
import 'package:cooking_app/sign_in.dart';
import 'package:cooking_app/splashscreen/screen1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.orange,
      body: Column(
        children: [
          SizedBox(
            height: height * 1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: -10,
                  child: Image(
                    image: const AssetImage("Images/circle.png"),
                    width: width * 1,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                    child: Center(
                        child: Image(
                  image: const AssetImage("Images/Logo.png"),
                  width: width * 0.5,
                ))),
                Positioned(
                    top: 100,
                    child: Text(
                      "Snacking Time",
                      style: TextStyle(
                          fontSize: height * 0.05,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 150,
                    child: Text(
                      "Cooking App",
                      style: TextStyle(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    bottom: 110,
                    left: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(width * 0.8, height * 0.06),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            backgroundColor: AppColor.orange),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Screen1(),
                              ));
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: height * 0.025),
                        ))),
                Positioned(
                    bottom: 30,
                    left: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(width * 0.8, height * 0.06),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            backgroundColor: AppColor.albescentwhite),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignIn(),
                              ));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: height * 0.025),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
