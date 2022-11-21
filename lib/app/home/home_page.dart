import 'package:domowy_asystent/app/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
<<<<<<< HEAD
            Color.fromARGB(255, 107, 74, 74),
            Color.fromARGB(255, 128, 94, 94),
            Color.fromARGB(255, 93, 147, 192),
            Color.fromARGB(255, 126, 179, 222),
            Color.fromARGB(255, 178, 214, 238),
            Color.fromARGB(255, 240, 243, 244),
            Color.fromARGB(255, 240, 243, 244),
=======
            Color.fromARGB(255, 27, 68, 7),
            Color.fromARGB(255, 38, 87, 13),
            Color.fromARGB(255, 54, 112, 25),
            Color.fromARGB(255, 66, 130, 34),
            Color.fromARGB(255, 83, 154, 48),
            Color.fromARGB(255, 128, 202, 90),
            Color.fromARGB(255, 172, 243, 136),
>>>>>>> a42616a57e423be292963b8f0113f77502c4b98b
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
