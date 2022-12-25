import 'package:flutter/material.dart';

class ListRow extends StatelessWidget {
  final String title;
  const ListRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff282828),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // AspectRatio(
          //   aspectRatio: 1,
          //   //child: Image.asset('assets/menu.png'),
          // ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/menu.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
