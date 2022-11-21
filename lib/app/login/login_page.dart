import 'package:domowy_asystent/app/menu/menu_page.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD
=======

>>>>>>> a42616a57e423be292963b8f0113f77502c4b98b
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
