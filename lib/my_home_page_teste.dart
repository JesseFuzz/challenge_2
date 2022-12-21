import 'package:flutter/material.dart';

class MyHomePageTeste extends StatelessWidget {
  const MyHomePageTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sparky',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/filhote.jpg',
            width: 200,
            height: 200,
          ),
          Center(
            child: Container(
              //color: Theme.of(context).colorScheme.secondary,
              child: const Text(
                'Hello World',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
