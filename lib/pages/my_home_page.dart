import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: MyAppBar(
          location: 'Cameron St., Boston',
        ),
      ),
    );
  }
}
