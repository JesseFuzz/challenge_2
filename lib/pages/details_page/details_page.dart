import 'package:desafio_2/pages/details_page/components/details_page_about.dart';
import 'package:desafio_2/pages/details_page/components/details_page_app_bar.dart';
import 'package:desafio_2/pages/details_page/components/details_page_header.dart';
import 'package:desafio_2/pages/details_page/components/details_page_photos.dart';
import 'package:flutter/material.dart';
import '../../data/pet_mock.dart';
import '../../models/pet_model.dart';
import 'components/detais_page_adopt_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    // late final PetModel pet;
    // final petModel = ModalRoute.of(context)?.settings.arguments;
    // if (petModel != null) {
    //   pet = petModel as PetModel;
    final petModel = ModalRoute.of(context)!.settings.arguments! as PetModel;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: DetailsPageAppBar(),
      ),
      body: Column(
        children: [
          DetailsPageHeader(petModel: petModel),
          SizedBox(
            height: screenSize.width * (37 / 375),
          ),
          DetailsPagePhotos(petModel: petModel, petMock: PetMock()),
          DetailsPageAbout(petModel: petModel),
          const Align(
            alignment: Alignment.bottomRight,
            child: DetailsPageAdoptButton(),
          ),
        ],
      ),
    );
  }
}
