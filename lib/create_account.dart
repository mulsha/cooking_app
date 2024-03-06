import 'package:cooking_app/appcolor.dart';
import 'package:cooking_app/sign_in.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool securetext = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    securetext = true;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                      fontSize: height * 0.04, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                Text(
                  " Start cooking like a chef right now",
                  style: TextStyle(fontSize: height * 0.02),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: width * 0.037,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.26,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          "Sign in with Phone Number",
                          style: TextStyle(
                            fontSize: width * 0.037,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        color: AppColor.lightgrey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 7),
                        child: TextFormField(
                            style: TextStyle(
                              fontSize: width * 0.04,
                            ),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'user@gmail.com')),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontSize: width * 0.037,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.26,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          "Sign in with Email",
                          style: TextStyle(
                            fontSize: width * 0.037,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        color: AppColor.lightgrey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 7),
                        child: TextFormField(
                            style: TextStyle(
                              fontSize: width * 0.04,
                            ),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your Number')),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: width * 0.037,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        color: AppColor.lightgrey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 7),
                        child: TextFormField(
                            obscureText: securetext,
                            style: TextStyle(
                              fontSize: width * 0.04,
                            ),
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        securetext = !securetext;
                                      });
                                    },
                                    icon: Icon(securetext
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                border: InputBorder.none,
                                hintText: 'Enter your Password')),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(width * 0.8, height * 0.07),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          backgroundColor: AppColor.orange),
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: height * 0.025, color: AppColor.black),
                      )),
                ),
                SizedBox(
                  height: height * 0.022,
                ),
                Center(
                    child: Text(
                  "or",
                  style: TextStyle(fontSize: height * 0.03),
                )),
                SizedBox(
                  height: height * 0.022,
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(width * 0.8, height * 0.07),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          backgroundColor: AppColor.lightorange),
                      onPressed: () {},
                      child: Text(
                        "Sign Up with Google",
                        style: TextStyle(
                            fontSize: height * 0.025, color: AppColor.black),
                      )),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(width * 0.8, height * 0.07),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          backgroundColor: AppColor.lightorange),
                      onPressed: () {},
                      child: Text(
                        "Sign Up with Apple",
                        style: TextStyle(
                            fontSize: height * 0.025, color: AppColor.black),
                      )),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: height * 0.019),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignIn(),
                              ));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: height * 0.019),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
