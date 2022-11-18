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
