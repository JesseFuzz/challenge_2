import 'package:desafio_2/utils/app_assets.dart';
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
              AppAssets.menuIcon,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Location',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 5),
              Text(
                'São Paulo, Brasil',
                style: Theme.of(context).textTheme.headline5,
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
