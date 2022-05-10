import 'package:flutter/material.dart';
class CustomListTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        // tileColor: Colors.grey,
        leading: Image.network(
            'https://images.unsplash.com/photo-1509423350716-97f9360b4e09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGxhbnQlMjBwb3R8ZW58MHx8MHx8&w=1000&q=80'),
        title: Text('Calathia'),
        subtitle: Text("it's spines don't grow"),
      ),
    );
  }
}
