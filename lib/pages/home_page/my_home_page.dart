import 'package:flutter/material.dart';
import '../../data/pet_filter_mock.dart';
import '../../data/pet_mock.dart';
import 'components/app_bar.dart';
import 'components/filter_button_sliver.dart';
import 'components/pet_list_sliver.dart';

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
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            children: [
              FilterButtonSliver(filterList: PetFilterMock()),
              const SizedBox(height: 10),
              PetListSliver(petMock: PetMock()),
            ],
          ),
        ),
      ),
    );
  }
}
