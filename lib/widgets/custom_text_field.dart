import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
  }) : super(key: key);

  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          size: 23,
        ),
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                color: Colors.black,
              )
            : null,
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
