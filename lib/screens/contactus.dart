import 'package:flutter/material.dart';

class Contactus extends StatefulWidget {
  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.1,
          backgroundColor: Color(0xFF4F51C0),
          title: Text('Contact Us'),
        ),
        body: column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[Text()]));
  }
}
