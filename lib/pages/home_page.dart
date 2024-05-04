import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageTitle(),
    );
  }

  Widget _pageTitle(){
    return const Text("#GoMoon",
    style: TextStyle(
      color: Colors.cyanAccent,
      fontSize: 40,
      fontWeight: FontWeight.w300,

    )
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
