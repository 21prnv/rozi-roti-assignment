import 'package:flutter/material.dart';
import 'package:roziroti/widgets/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // On profile screen click on logout button to view create new account page
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app',
      home: CustomBottomNavigationBar(),
    );
  }
}
