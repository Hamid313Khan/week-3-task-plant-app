import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app/custom_widgets/custom_listtile.dart';
import 'package:plant_app/custom_widgets/custom_icontile.dart';

class ProductDetails extends StatefulWidget {
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int a = 0;

  void add() {
    a++;
  }

  void minus() {
    if (a > 0) {
      a--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC1DFCB),
      body: Stack(
        overflow: Overflow.visible,
        // fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 370,

            child: Container(
              // color: Colors.blue,
              height: 300,
              width: 400,
              alignment: Alignment.center,
              child: Image.asset('images/plant.png'),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Positioned(
            left: 350,
            top: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ),
          ),
          Positioned(
            top: 320,
            child: Container(
              alignment: Alignment.center,
              height: 500,
              width: 413,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Scheflera',
                            style: TextStyle(
                              fontSize: 30,fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Text(
                              '\$25*****',
                              style: TextStyle(fontSize: 15,color: Color(0xff8DBF59)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 440),
                      child: Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Color(0xff3F6B51),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  minus();
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$a',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  add();
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 10,
            right: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About', textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20,color: Color(0xff3F6B51),fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                      'However they look huge white flowers and they\nbloom throughout the year and bit more frequemtly\nin the spring time. This is couple with plant broad\ndeep green leaves', style: TextStyle(color: Color(0xff3F6B51)),),
                ),
              ],
            ),
          ),
          Positioned(
            top: 550,
            left: 10,
            right: 10,
            child: Container(
              height: 60,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   CustomIconTile(Icons.height, 'Height', '6.8'),
                   SizedBox(
                     width: 20,
                   ),
                   CustomIconTile(Icons.water_drop, 'Humidity', '70%'),
                  SizedBox(
                    width: 20,
                  ),
                   CustomIconTile(Icons.nature_people, 'Nature', '98'),
                  SizedBox(
                    width: 20,
                  ),
                   CustomIconTile(Icons.leak_add, 'Stats', '58'),
                  SizedBox(
                    width: 20,
                  ),
                   CustomIconTile(Icons.dry, 'Dryness', '38'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,670,0,0),
            child: Container(
              // color: Colors.green,
              height: 50,
              width: 500,
              child: ListTile(
                leading: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xff3F6B51),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(50, 50),
                    shape: CircleBorder(),
                      primary: Colors.grey.shade300,
                      shadowColor: Colors.transparent),
                ),
                trailing: ElevatedButton.icon(
                  icon: Icon(Icons.shopping_bag),
                  label: Text('Buy Now'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(250, 50),
                    primary: Color(0xff3F6A51),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
