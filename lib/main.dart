import 'package:christmas_app/explore_christmas_btn.dart';
import 'package:christmas_app/pastries_btn.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

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
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  onPressed: () {},
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
                  padding:
                      MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(8.0)),
                ),
              ),
              const Spacer(),
              IconButton(
                  padding: const EdgeInsets.all(4.0),
                  onPressed: () {},
                  icon: const Icon(Icons.notifications)),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/branch_BG.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),
              const Text("Pastries",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
              SizedBox(height: 25),
              const Text(
                "5 Delicicaties availible",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PastriesBtn(
                        imagepath: "assets/images/yule_cake.png",
                        buttonText: "Yule Log \n Cake"),
                    SizedBox(width: 5),
                    PastriesBtn(
                        imagepath: "assets/images/mince_pie.png",
                        buttonText: "Grandmas \n Mince Pie"),
                    SizedBox(width: 5),
                    PastriesBtn(
                        imagepath: "assets/images/cup_cake.png",
                        buttonText: "Christmas \n Muffin"),
                    SizedBox(width: 5),
                    PastriesBtn(
                        imagepath: "assets/images/gingerbread_man.png",
                        buttonText: "Gingerbread \n man"),
                  ],
                ),
              ),
              SizedBox(height: 19),
              const Text("Explore Christmas",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ExploreChristmasBtn(
                        buttonText: "Festive \n Ornaments",
                        secondaryText: "Home supply",
                        imagepath: "assets/images/santa.png"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(
                        buttonText: "Christmas \n Presents",
                        secondaryText: "Gift of Giving",
                        imagepath: "assets/images/sleigh.png"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(
                        buttonText: "Seasonal \n Decoration",
                        secondaryText: "Home supply",
                        imagepath: "assets/images/snowball.png"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(
                        buttonText: "Perfect \n Outfits",
                        secondaryText: "Clothing",
                        imagepath: "assets/images/glove.png"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(
                        buttonText: "Accessoire \n for NYE",
                        secondaryText: "Clothing",
                        imagepath: "assets/images/party.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
