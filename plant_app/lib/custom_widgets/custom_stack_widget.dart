import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  CustomStack(this.heading, this.subHeading);
  String heading;
  String subHeading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                heading,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                subHeading,
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Positioned(
          left: 200,
          child: Container(
            height: 50,
            child: Image.asset('images/leaf.png'),
          ),
        )
      ],
    );
  }
}
