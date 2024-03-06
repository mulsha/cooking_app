import 'package:cooking_app/appcolor.dart';
import 'package:cooking_app/create_account.dart';
import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateAccount(),
                        ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: height * 0.025),
                  ),
                ),
              ),
            ),
            Text(
              "Preferences!",
              style: TextStyle(fontSize: height * 0.04),
            ),
            Text(
              "What do you prefer in food?",
              style: TextStyle(fontSize: height * 0.027),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: const Color(0xffF2F2F2), width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/1.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Vegan",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: const Color(0xffF2F2F2), width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/2.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Meat",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.033,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: AppColor.lightorange,
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(color: AppColor.orange, width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/3.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Sweet",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xffFEE8CC),
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: const Color(0xffFB8C00), width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/4.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Seafood",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.033,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(color: AppColor.offwhite, width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/5.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Raw Food Diet",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: AppColor.offwhite,
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(color: AppColor.offwhite, width: 3)),
                      ),
                      Positioned(
                          top: -60,
                          child: Image(
                            image: const AssetImage("Images/6.png"),
                            height: height * 0.17,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Alcohol",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.033,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: AppColor.lightorange,
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(color: AppColor.orange, width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/7.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "NO Milk",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: AppColor.offwhite,
                            boxShadow: const [
                              BoxShadow(blurRadius: 15.0, offset: Offset(0, 5))
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(color: AppColor.offwhite, width: 3)),
                      ),
                      Positioned(
                          top: -70,
                          child: Image(
                            image: const AssetImage("Images/8.png"),
                            height: height * 0.22,
                            // height: 200,
                          )),
                      Positioned(
                        bottom: 15,
                        child: Text(
                          "Gluten free",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(width * 0.8, height * 0.07),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    backgroundColor: AppColor.orange),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
                child: Text(
                  "Let`s Go",
                  style: TextStyle(
                      color: AppColor.black, fontSize: height * 0.025),
                )),
          ],
        ),
      ),
    );
  }
}
