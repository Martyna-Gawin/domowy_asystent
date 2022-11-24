import 'package:domowy_asystent/app/auth/auth_gate.dart';
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
              Color.fromARGB(255, 107, 74, 74),
              Color.fromARGB(255, 128, 94, 94),
              Color.fromARGB(255, 93, 147, 192),
              Color.fromARGB(255, 126, 179, 222),
              Color.fromARGB(255, 178, 214, 238),
              Color.fromARGB(255, 240, 243, 244),
              Color.fromARGB(255, 240, 243, 244),
            ],
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
                    builder: (_) => const AuthGate(),
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
