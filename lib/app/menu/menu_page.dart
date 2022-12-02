import 'package:domowy_asystent/app/auth/pages/user_profile.dart';
import 'package:domowy_asystent/app/category_widget/event_category.dart';
import 'package:flutter/material.dart';

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
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const UserProfile(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.person, color: Colors.white),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              const _CategoryWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  const _CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 22, left: 20, right: 20),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 192, 195, 192),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 87, 84, 84).withOpacity(0.5),
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const EventCategory(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.calendar_month, color: Colors.white),
                    iconSize: 70,
                  ),
                  const Text(
                    'Wydarzenia',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 22, left: 20, right: 20),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 192, 195, 192),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 87, 84, 84).withOpacity(0.5),
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
                    icon: const Icon(Icons.list_sharp, color: Colors.blue),
                    iconSize: 70,
                  ),
                  const Text(
                    'Lista',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 22, left: 20, right: 20),
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 192, 195, 192),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 87, 84, 84).withOpacity(0.5),
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
                    icon: const Icon(Icons.wallet, color: Colors.brown),
                    iconSize: 70,
                  ),
                  const Text(
                    'Portfel',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
