import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  /*
  BuildContext Class, which kind of gives us information about a widgets location in the widget, 
  Tree of a Floater application, and in previous video, we saw how we saw something 
  when we started our application, It's basically kind of giving us 
  a visual representation of how one widget connects with the other and
  */

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.blueGrey.withBlue(255).withOpacity(.1),
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: _pageTitle()),
    ));
  }

Widget _pageTitle() {
    final Color brownColorWithOpacity = Colors.teal.withOpacity(1.0);
    // Define the color outside of the widget tree
    return Text(
      "#GoMoon",
      style: TextStyle(
        color: brownColorWithOpacity,
        fontSize: 40,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/supermoon.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
