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
                height: 60,
                child: SearchBar(
                  //  shadowColor: Colors.white,
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              Text("Pastries",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              Text("5 delicicaties availible"),
              Row(children: []),
              Text("Explore Christmas"),
            ],
          ),
        ),
      ),
    );
  }
}
