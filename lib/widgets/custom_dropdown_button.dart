import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButtonClass({
    required this.values,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
        return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * .05),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(100, 24, 55, 1.0),
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
        dropdownColor: Color.fromARGB(255, 10, 0, 34),
        style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 244, 160, 3)),
      ),
    );
  }
}