import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * .05),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 43, 38, 40),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        underline: Container(),
        borderRadius: BorderRadius.circular(20),
        dropdownColor: Color.fromARGB(255, 0, 0, 0),
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'sans-serif',
            fontSize: 18,
            color: Color.fromARGB(255, 221, 212, 192)),
      ),
    );
  }
}
