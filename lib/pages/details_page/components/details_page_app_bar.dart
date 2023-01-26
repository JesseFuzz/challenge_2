import 'package:flutter/material.dart';

class DetailsPageAppBar extends StatelessWidget {
  const DetailsPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      actions: [
        Container(
          height: screenSize.width * (44 / 375),
          width: screenSize.width * (44 / 375),
          decoration: BoxDecoration(
            color: Colors.deepOrange.withOpacity(0.4),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.only(
            right: screenSize.width * (26 / 375),
            top: screenSize.width * (10 / 375),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
