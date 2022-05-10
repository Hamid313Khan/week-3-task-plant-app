import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        clipBehavior: Clip.hardEdge,
          children: [
            Container(
              height: 250,
              width: 175,
              decoration: BoxDecoration(
                   color: Color(0xffE5F0EA),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
              top: 180,
              child: Container(
                 // color: Colors.blue,
                width: 175,
                child: ListTile(
                  title: Text('Peace Lilly',style: TextStyle(fontSize: 15,color: Color(0xff3F6A51)),),

                  subtitle: Text('Indoor',),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      minimumSize: Size(35, 10),
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text('\$33',style: TextStyle(color: Color(0xff3F6A51)),),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
            ),
            Positioned(
              top: 50,
              child: Container(
                height: 120,
                width: 175,
                decoration: BoxDecoration(
                    color: Color(0xffC1DFCB),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(400),
                      bottomLeft: Radius.circular(100),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),),
              ),
            ),
            Positioned(
              right: 50,
              top: 25,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(300),
                      bottomLeft: Radius.circular(50),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Image.asset('images/plant.png'),
              ),
            ),
          ]),
    );
  }
}
