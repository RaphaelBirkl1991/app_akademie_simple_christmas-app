import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              const Spacer(),
              SizedBox(
                height: 40,
                child: FloatingActionButton(
                  child: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
              const SizedBox(
                width: 200, // Setzen Sie die gewünschte Breite
                height: 40, // Setzen Sie die gewünschte Höhe
                child: SearchBar(
                  leading: Icon(Icons.search),
                  padding:
                      MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(8.0)),
                ),
              ),
              const Spacer(),
              IconButton(
                  padding: const EdgeInsets.all(4.0),
                  onPressed: () {},
                  icon: const Icon(Icons.ring_volume)),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/app_akademie_logo.png"),
                        fit: BoxFit.cover)),
              ),
            ]),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/app_akademie_logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
