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
          color: Colors.blue.withGreen(132).withOpacity(.1),
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.08),
          child: _pageTitle()),
    ));
  }

Widget _pageTitle() {
    final Color whiteColorWithOpacity = Colors.white.withBlue(255).withOpacity(.8);
    // Define the color outside of the widget tree
    return Container(
      color: Colors.deepPurple.withOpacity(0.2),
      child: Text("#GoMoon",
      style: TextStyle(
        color: whiteColorWithOpacity,
        fontSize: 40,
        fontWeight: FontWeight.w800,
      ),
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
