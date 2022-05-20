import 'package:flutter/material.dart';
class CustomIconTile extends StatelessWidget {
  CustomIconTile(this.iconName, this.title,this.subtitle);
  IconData iconName;
  String title;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: CircleAvatar(
          backgroundColor: Color(0xff3F6B51),
            child: Icon(iconName,color: Colors.white,))),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(title),
            SizedBox(height: 5,),
            Text(subtitle),
          ],
        )
      ],
    );

  }
}
