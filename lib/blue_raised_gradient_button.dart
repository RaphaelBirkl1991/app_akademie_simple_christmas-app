import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final String buttonText2;
  final String buttonText;
  final String imagepath;
  final String imagepath2;
  const RaisedGradientButton(
      {Key? key,
      required this.buttonText,
      required this.imagepath,
      required this.buttonText2,
      required this.imagepath2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: LinearGradient(colors: <Color>[
          Color(0xFFADCBE6),
          Color(0xFF1E4D78),
        ]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.02,
                left: 20,
                child: Text(
                  buttonText2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Text(
                  buttonText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: /*Image.asset(
                  imagepath,*/
                    Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage(imagepath),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
                width: 200,
                height: 200,
              ),
              Positioned(
                left: 135,
                bottom: 190,
                child: /*Image.asset(
                  imagepath,*/
                    Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage(imagepath2),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
