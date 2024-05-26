import 'package:flutter/material.dart';

class CostumeTextField extends StatelessWidget {
  const CostumeTextField({
    super.key,
    required this.labeltext,
    required this.icon,
  });

  final String labeltext;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            prefixIcon: icon,
            labelText: labeltext,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontFamily: 'Compact',
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black))));
  }
}

class CostumePasswordTextField extends StatelessWidget {
  const CostumePasswordTextField({
    super.key,
    required this.labeltext,
    required this.icon,
    required this.password,
    required this.icon2,
  });

  final String labeltext;
  final Icon icon;
  final bool password;
  final Icon icon2;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: password,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: icon2,
            labelText: labeltext,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontFamily: 'Compact',
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black))));
  }
}
