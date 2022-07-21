import 'package:flutter/material.dart';


class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(


        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        duration: Duration(seconds: 8),
      ),
    );
  }
}
