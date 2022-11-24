import 'package:domowy_asystent/app/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class MenuPage extends StatelessWidget {
  const MenuPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 107, 74, 74),
              Color.fromARGB(255, 128, 94, 94),
              Color.fromARGB(255, 93, 147, 192),
              Color.fromARGB(255, 126, 179, 222),
              Color.fromARGB(255, 178, 214, 238),
              Color.fromARGB(255, 240, 243, 244),
              Color.fromARGB(255, 240, 243, 244),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: const [
                  CategoryWidget(
                    icon: Icon(Icons.calendar_month, color: Colors.white),
                    title: ('Wydarzenia'),
                  ),
                  CategoryWidget(
                    icon: Icon(Icons.list_sharp, color: Colors.blue),
                    title: ('Lista'),
                  ),
                  CategoryWidget(
                    icon: Icon(Icons.wallet, color: Colors.brown),
                    title: ('Portfel'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromARGB(255, 192, 195, 192),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 87, 84, 84).withOpacity(0.5),
              spreadRadius: 7,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: icon,
              iconSize: 70,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
