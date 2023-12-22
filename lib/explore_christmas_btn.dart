import 'package:flutter/material.dart';

class ExploreChristmasBtn extends StatelessWidget {
  final String buttonText;
  final String secondaryText;
  final String imagepath;

  const ExploreChristmasBtn({
    Key? key,
    required this.buttonText,
    required this.secondaryText,
    required this.imagepath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: Color.fromRGBO(49, 150, 111, 1),
        padding: const EdgeInsets.all(5),
        minimumSize: Size(270, 180),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7),
              Text(
                "Holiday Delicacies",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                buttonText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ],
          ),
          SizedBox(width: 20), // Justieren des Abstands zwischen Text und Bild
          ClipRRect(
            borderRadius: BorderRadius.circular(2.0),
            child: Image.asset(
              imagepath,
              fit: BoxFit.contain,
              width: 120,
              height: 130,
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ExploreChristmasBtn extends StatelessWidget {
//   final String buttonText;
//   final String secondaryText;
//   final String imagepath;

//   const ExploreChristmasBtn(
//       {Key? key,
//       required this.buttonText,
//       required this.secondaryText,
//       required this.imagepath})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         backgroundColor: Color.fromRGBO(49, 150, 111, 1),
//         padding: const EdgeInsets.all(5),
//         minimumSize: Size(270, 180),
//       ),
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             child: Text(
//               "Holiday Delicacies",
//               style: TextStyle(
//                   fontWeight: FontWeight.normal,
//                   color: Colors.white,
//                   fontSize: 16),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: Text(
//               buttonText,
//               style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   fontSize: 19),
//             ),
//           ),
//           Positioned(
//             left: 40, // Hier den Abstand zum rechten Rand einstellen
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(2.0),
//               child: Image.asset(
//                 imagepath,
//                 fit: BoxFit.contain,
//                 width: 120,
//                 height: 130,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


