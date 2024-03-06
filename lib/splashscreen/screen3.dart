import 'package:cooking_app/appcolor.dart';
import 'package:cooking_app/create_account.dart';
import 'package:cooking_app/preferences.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

//3704
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                    image: const AssetImage("Images/Onboarding - 3.png"),
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
                                builder: (context) => const Preferences()));
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
                      "Challenge!",
                      style: TextStyle(
                          fontSize: height * 0.05, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 145,
                    child: Text(
                      "Win and get Gifts",
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
