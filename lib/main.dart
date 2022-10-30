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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 57, 89),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/domek1.png'),
              radius: 100,
            ),
            const SizedBox(height: 50),
            Text(
              'Domowy Asystent',
              style: GoogleFonts.cookie(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Zaloguj'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SecondPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 57, 89),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Wejdź'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ThirdPage(),
                ),);
              },
            )
          ],
        )));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 57, 89),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Text('Budżet',
         style:GoogleFonts.poppins(
         fontSize: 20,
         color: Colors.white
          ) ),
         Text('Kalendarz',
         style:GoogleFonts.poppins(
         fontSize: 20,
         color: Colors.white
          )),
         Text('Lista zakupów',
         style:GoogleFonts.poppins(
         fontSize: 20,
         color: Colors.white
         )),
         Text('Długi',
         style:GoogleFonts.poppins(
         fontSize: 20,
         color: Colors.white
          )),
       ],
     )
      );
    
  }
}