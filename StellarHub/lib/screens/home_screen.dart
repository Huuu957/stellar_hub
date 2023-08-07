import 'package:flutter/material.dart';
import 'package:stellarhub/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String homeScreenRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: const Text('TODAY'),
      ),
    );
  }
}
