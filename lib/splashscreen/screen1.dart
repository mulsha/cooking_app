import 'package:cooking_app/appcolor.dart';
import 'package:cooking_app/create_account.dart';
import 'package:cooking_app/splashscreen/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
                    image: const AssetImage("Images/Onboarding - 1.png"),
                    width: width * 1,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  bottom: 33,
                  left: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(width * 0.8, height * 0.06),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          backgroundColor: AppColor.orange),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const Screen2();
                          },
                        ));
                      },
                      child: Text(
                        "Let`s Go",
                        style: TextStyle(
                            color: AppColor.black, fontSize: height * 0.025),
                      )),
                ),
                Positioned(
                    top: 30,
                    right: 10,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const CreateAccount();
                            },
                          ));
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: AppColor.black, fontSize: height * 0.027),
                        ))),
                Positioned(
                    top: 95,
                    child: Text(
                      "Hello!",
                      style: TextStyle(
                          fontSize: height * 0.05, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 140,
                    child: Text(
                      "Let`s cook!",
                      style: TextStyle(fontSize: height * 0.035),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
