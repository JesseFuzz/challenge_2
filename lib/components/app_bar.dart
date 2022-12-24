import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String location;
  const MyAppBar({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      //color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                //'assets/drawer.jpeg',
                'assets/menu.png',
                width: 400,
                height: 400,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
            ),
          )
        ],
      ),
    );
  }
}
