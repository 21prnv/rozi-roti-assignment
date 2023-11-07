import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({super.key, required this.icon, required this.text, this.onTap});
  final Icon icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
          contentPadding: const EdgeInsets.all(-2),
          onTap: onTap,
          leading: SizedBox(height: 25, child: icon),
          title: Text(
            text,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Color.fromARGB(255, 110, 90, 128),
            size: 16,
          )),
    );
  }
}
