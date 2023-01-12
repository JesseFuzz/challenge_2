import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: Image.asset(
              //'assets/drawer.jpeg',
              'assets/menu.png',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Cameron St., Boston',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          )
        ],
      ),
    );
  }
}