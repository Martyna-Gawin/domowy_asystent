import 'package:domowy_asystent/app/menu/menu_page.dart';
import 'package:flutter/material.dart';

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
