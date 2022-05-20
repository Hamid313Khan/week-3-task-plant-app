import 'package:flutter/material.dart';

class BuyingScreen extends StatefulWidget {
  @override
  State<BuyingScreen> createState() => _BuyingScreenState();
}

class _BuyingScreenState extends State<BuyingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                  'images/plant3.png'),
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                child: FloatingActionButton.small(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 450.0, top: 10.0, right: 10),
                child: FloatingActionButton.small(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
