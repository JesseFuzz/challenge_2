import 'package:flutter/material.dart';

class DetailsPageAppBar extends StatelessWidget {
  const DetailsPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFF686766),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
