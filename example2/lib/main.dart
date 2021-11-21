import 'package:flutter/material.dart';
import 'package:package1/package1.dart';
import 'src/grid_menu.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Home(),
  ));
}

class Home extends StatelessWidget {

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            banner(context),
            gridMenu(context)
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigation(context),
    );
  }

  banner(BuildContext context) {
    return const Image(
      image: AssetImage("header.png"),
    );
  }

  gridMenu(BuildContext context) {
    return const GridMenu();
  }

  bottomNavigation(BuildContext context) {
    return const Text('bottomNavigation');
  }

}

