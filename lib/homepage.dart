import 'package:cooking_app/appcolor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                //Post-1
                feed(
                    context,
                    "Salmon and baked\nvegetable--Fish Challenge",
                    "Images/Home/recipe card.png",
                    "Images/Home/save.png",
                    "Images/Home/profile.png",
                    "Joe Johnson"),
                SizedBox(
                  height: height * 0.03,
                ),
                // First ListView
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SizedBox(
                    height: height * 0.41,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: newsnack(
                            context,
                            "Fried Bacon with\nvegetable-Quick",
                            "Images/Home/Half/FriedVeg.png",
                            "Images/Home/profile.png",
                            "# Protein",
                            "# Health"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: newsnack(
                            context,
                            "Double Decker beef\nSandwich",
                            "Images/Home/Half/Sandwich.png",
                            "Images/Home/profile.png",
                            "# Nutritious",
                            "# Health"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: newsnack(
                            context,
                            "Heading Heading \nHeading",
                            "Images/Home/Half/Heading.png",
                            "Images/Home/profile.png",
                            "# Sweet",
                            "# Health"),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                //Post-2
                feed(
                    context,
                    "Grilled Cheese and \ntomato Sandwich",
                    "Images/Home/recipe card1.png",
                    "Images/Home/save.png",
                    "Images/Home/profile1.png",
                    "John Li"),
                SizedBox(
                  height: height * 0.03,
                ),
                //Second ListView
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SizedBox(
                    height: height * 0.41,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: newsnack(
                            context,
                            "Fried Bacon with\nvegetable-Quick",
                            "Images/Home/Half/HotDog.png",
                            "Images/Home/profile.png",
                            "# Tasty",
                            "# Unusual"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: newsnack(
                            context,
                            "Double Decker beef\nSandwich",
                            "Images/Home/Half/DoubleSandwich.png",
                            "Images/Home/profile.png",
                            "# Fast",
                            "# Health"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: newsnack(
                            context,
                            "Heading Heading \nHeading",
                            "Images/Home/Half/FriedVeg.png",
                            "Images/Home/profile.png",
                            "# Sweet",
                            "# Health"),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                //Post-3
                feed(
                    context,
                    "Diet of Vegetable and\nBeans",
                    "Images/Home/recipe card2.png",
                    "Images/Home/save.png",
                    "Images/Home/profile.png",
                    "Joe Johnson"),
              ],
            ),
          ),
        ),
      ),
    );
  }

// Posts
  feed(BuildContext context, text, img, save, profile, name) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.45,
      width: width * 0.9,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(blurRadius: 5, offset: Offset(0, 2), color: Colors.black54)
      ], color: AppColor.offwhite, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)),
            child: Image(
              image: AssetImage(img),
              height: height * 0.23,
              width: width * 0.9,
              fit: BoxFit.fitWidth,
            ),
          ),
          // SizedBox(height: height*0.01),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
            child: Row(
              children: [
                Container(
                  height: height * 0.03,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    "# From Chef",
                    style: TextStyle(),
                  )),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  height: height * 0.03,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    "# Challenge",
                    style: TextStyle(),
                  )),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: Image(image: AssetImage(save)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: height * 0.03, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: height * 0.02,
                  backgroundImage: AssetImage(profile),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: height * 0.023, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined))
              ],
            ),
          )
        ],
      ),
    );
  }

// Sub Post
  newsnack(BuildContext context, text, img, profile, snack1, snack2) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.39,
      width: width * 0.58,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(blurRadius: 5, offset: Offset(0, 2), color: Colors.black54)
      ], color: AppColor.offwhite, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          //IMAGE
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)),
            child: Image(
              image: AssetImage(img),
              height: height * 0.2,
              width: width * 0.6,
              fit: BoxFit.fitHeight,
            ),
          ),
          // SizedBox(height: height*0.01),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
            child: Row(
              children: [
                //SNACK1
                Container(
                  height: height * 0.03,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    snack1,
                    style: const TextStyle(),
                  )),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                //SNACK2
                Container(
                  height: height * 0.03,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    snack2,
                    style: const TextStyle(),
                  )),
                ),
              ],
            ),
          ),
          //DETAIL
          Padding(
            padding: const EdgeInsets.only(left: 8,top: 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: height * 0.03, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
            child: Row(
              children: [
                //PROFILE PIC
                CircleAvatar(
                  radius: height * 0.02,
                  backgroundImage: AssetImage(profile),
                ),
                const Spacer(),
                //ICON
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined))
              ],
            ),
          )
        ],
      ),
    );
  }
}
