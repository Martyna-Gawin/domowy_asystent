import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
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
                    onPressed: () {},
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
