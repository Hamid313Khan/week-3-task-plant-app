import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(this.name,this.iconbadge);
  String name;
  IconData iconbadge;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(iconbadge),
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
