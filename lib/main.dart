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
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const Text(
                "5 Delicicaties availible",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PastriesBtn(buttonText: "Yule Log \n Cake"),
                    SizedBox(width: 5),
                    PastriesBtn(buttonText: "Grandmas \n Mince Pie"),
                    SizedBox(width: 5),
                    PastriesBtn(buttonText: "Christmas \n Muffin"),
                    SizedBox(width: 5),
                    PastriesBtn(buttonText: "Gingerbread \n man"),
                  ],
                ),
              ),
              const Text("Explore Christmas",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ExploreChristmasBtn(buttonText: "Festive \n Ornaments"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Christmas \n Presents"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Seasonal \n Decoration"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Perfect \n Outfits"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Accessoire \n for NYE"),
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

class PastriesBtn extends StatelessWidget {
  final String buttonText;

  const PastriesBtn({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.all(85),
      ),
      child: Text(
        buttonText,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class ExploreChristmasBtn extends StatelessWidget {
  final String buttonText;

  const ExploreChristmasBtn({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        backgroundColor: Colors.green,
        padding: const EdgeInsets.all(85),
      ),
      child: Text(
        buttonText,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
