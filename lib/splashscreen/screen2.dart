import 'package:cooking_app/appcolor.dart';
import 'package:cooking_app/create_account.dart';
import 'package:cooking_app/splashscreen/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
                    image: const AssetImage("Images/Onboarding - 2.png"),
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen3()));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: height * 0.025),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColor.black,
                            size: height * 0.03,
                          )
                        ],
                      )),
                ),
                Positioned(
                    top: 30,
                    right: 10,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateAccount()));
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: AppColor.black, fontSize: height * 0.027),
                        ))),
                Positioned(
                    top: 100,
                    child: Text(
                      "Create!",
                      style: TextStyle(
                          fontSize: height * 0.05, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 145,
                    child: Text(
                      "Your own Recipes",
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
