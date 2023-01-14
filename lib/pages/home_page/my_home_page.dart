import 'package:desafio_2/pages/home_page/components/character_item_list_component.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/filter_button_component.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const MyAppBar(),
      body: SizedBox(
        height: screenSize.height,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFF2F2F2),
          ),
          child: Column(
            children: const [
              FilterButtonComponent(),
              SizedBox(height: 10),
              CharacterItemListComponent()
            ],
          ),
        ),
      ),
    );
  }
}
