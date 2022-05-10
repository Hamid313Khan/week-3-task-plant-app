import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // CustomTextField(this.name,this.iconbadge);
  CustomTextField(this.name,this.iconbadge,this.iconbadge2);
  String name;
  IconData iconbadge;
  IconData? iconbadge2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(iconbadge),
            suffixIcon: Icon(iconbadge2),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none),
            fillColor: Color(0xffE8F0EE),
            filled: true,
            hintText: name),
      ),
    );
  }
}
