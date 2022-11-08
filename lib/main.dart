import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
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
            Color.fromARGB(255, 27, 68, 7),
            Color.fromARGB(255, 38, 87, 13),
            Color.fromARGB(255, 54, 112, 25),
            Color.fromARGB(255, 66, 130, 34),
            Color.fromARGB(255, 83, 154, 48),
            Color.fromARGB(255, 128, 202, 90),
            Color.fromARGB(255, 172, 243, 136),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.house, size: 100, color: Colors.white),
          const SizedBox(height: 30),
          Text(
            'Domowy Asystent',
            style: GoogleFonts.cookie(fontSize: 60, color: Colors.white),
          ),
          const SizedBox(height: 120),
          IconButton(
            icon: const Icon(Icons.login, size: 40, color: Colors.white),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({
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
                Color.fromARGB(255, 27, 68, 7),
                Color.fromARGB(255, 38, 87, 13),
                Color.fromARGB(255, 54, 112, 25),
                Color.fromARGB(255, 66, 130, 34),
                Color.fromARGB(255, 83, 154, 48),
                Color.fromARGB(255, 128, 202, 90),
                Color.fromARGB(255, 172, 243, 136),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: ElevatedButton(
            child: const Text('Dalej'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const MenuPage()),
              );
            },
          )),
    );
  }
}

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
              Color.fromARGB(255, 27, 68, 7),
              Color.fromARGB(255, 38, 87, 13),
              Color.fromARGB(255, 54, 112, 25),
              Color.fromARGB(255, 66, 130, 34),
              Color.fromARGB(255, 83, 154, 48),
              Color.fromARGB(255, 128, 202, 90),
              Color.fromARGB(255, 172, 243, 136),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
