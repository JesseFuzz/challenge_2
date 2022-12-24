import 'package:desafio_2/components/body_list.dart';
import 'package:desafio_2/components/list_tile.dart';
import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          MyAppBar(location: 'Cameron St., Boston'),
          //MyBody(listRow: MyListTile()),
          MyListTile()
        ],
      ),
    );
  }
}
