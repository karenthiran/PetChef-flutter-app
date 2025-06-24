import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:petchef/pages/dogBreeds.dart';
import 'package:petchef/pages/home.dart';
import 'package:petchef/pages/order.dart';
import 'package:petchef/pages/profile.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<Bottomnav> {
  int currentTapIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Dogbreeds dogBreeds;

  void initState() {
    homepage = Home();
    order = Order();
    profile = Profile();
    dogBreeds = Dogbreeds();
    pages = [homepage, order, dogBreeds, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTapIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.pets_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTapIndex],
    );
  }
}
