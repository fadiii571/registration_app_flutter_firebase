import 'package:flutter/material.dart';

class Homesc extends StatefulWidget {

final String username;
Homesc({required this.username});
  @override
  State<Homesc> createState() => _HomescState();
}

class _HomescState extends State<Homesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Hello ${widget.username}"),
      ),
    );
  }
}