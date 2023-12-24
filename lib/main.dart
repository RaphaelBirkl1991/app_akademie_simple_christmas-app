import 'package:christmas_app/green_raised_gradient_button.dart';

import 'package:christmas_app/blue_raised_gradient_button.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MainApp({Key? key}) : super(key: key);

  void openDrawer() {
    print("in method: open drawer");
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              const Spacer(),
              SizedBox(
                height: 45,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: openDrawer,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              const SizedBox(
                width: 200,
                height: 150,
                child: SearchBar(
                  hintText: "Search",
                  hintStyle: MaterialStatePropertyAll(TextStyle(fontSize: 15)),
                  leading: Icon(Icons.search),

                  //  overlayColor: Color(Color.fromRGBO(255, 255, 255, 1)),
                  padding:
                      MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(8.0)),
                ),
              ),
              const Spacer(),
              IconButton(
                padding: const EdgeInsets.all(4.0),
                onPressed: () {},
                icon: const Icon(Icons.notifications, color: Colors.white),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/kai.png"),
                        fit: BoxFit.cover)),
              ),
              const Spacer(),
            ]),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/branch_BG.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Pastries",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "5 Delicicaties availible",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    children: const [
                      SizedBox(width: 15),
                      RaisedGradientButton(
                          imagepath2: "assets/images/mini_star.png",
                          buttonText2: "Holiday Delicacies",
                          buttonText: "Yule Log \n Cake",
                          imagepath: "assets/images/yule_cake.png"),
                      SizedBox(width: 15),
                      RaisedGradientButton(
                          imagepath2: "assets/images/mini_star.png",
                          buttonText2: "Holiday Delicacies",
                          buttonText: "Grandmas \n Mince Pie",
                          imagepath: "assets/images/mince_pie.png"),
                      SizedBox(width: 15),
                      RaisedGradientButton(
                        imagepath2: "assets/images/mini_star.png",
                        buttonText2: "Holiday Delicacies",
                        buttonText: "Christmas \n Muffin",
                        imagepath: "assets/images/cup_cake.png",
                      ),
                      SizedBox(width: 15),
                      RaisedGradientButton(
                          imagepath2: "assets/images/mini_star.png",
                          imagepath: "assets/images/gingerbread_man.png",
                          buttonText: "Gingerbread \n man",
                          buttonText2: "Holiday Delicies"),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                const SizedBox(height: 19),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Explore Christmas",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    children: const [
                      SizedBox(width: 15),
                      GreenRaisedGradientButton(
                        buttonText: "Festive \n Ornaments",
                        buttonText2: "Home supply",
                        imagepath: "assets/images/santa.png",
                        //  imagepath2: "",
                      ),
                      SizedBox(width: 15),
                      GreenRaisedGradientButton(
                          buttonText: "Christmas \n Presents",
                          buttonText2: "Gift of Giving",
                          imagepath: "assets/images/sleigh.png"),
                      SizedBox(width: 15),
                      GreenRaisedGradientButton(
                          buttonText: "Seasonal \n Decoration",
                          buttonText2: "Home supply",
                          imagepath: "assets/images/snowball.png"),
                      SizedBox(width: 15),
                      GreenRaisedGradientButton(
                          buttonText: "Perfect \n Outfits",
                          buttonText2: "Clothing",
                          imagepath: "assets/images/glove.png"),
                      SizedBox(width: 15),
                      GreenRaisedGradientButton(
                          buttonText: "Accessoire \n for NYE",
                          buttonText2: "Clothing",
                          imagepath: "assets/images/party.png"),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
