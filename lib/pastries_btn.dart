import 'package:flutter/material.dart';

class PastriesBtn extends StatelessWidget {
  final String buttonText;
  final String imagepath;

  const PastriesBtn({
    Key? key,
    required this.buttonText,
    required this.imagepath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        backgroundColor: Color.fromRGBO(90, 128, 164, 1),
        padding: const EdgeInsets.all(20),
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 2), // Anpassen, um den Text zu positionieren
              child: Text(
                "Holiday Delicacies",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 2), // Anpassen, um den Text zu positionieren
              child: Text(
                buttonText,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  30, 0, 0, 0), // Anpassen, um das Bild zu positionieren
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Image.asset(
                  imagepath,
                  fit: BoxFit.cover,
                  width: 150, // Anpassen der Breite des Bildes nach Bedarf
                  height: 180, // Anpassen der Höhe des Bildes nach Bedarf
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// 