import 'package:flutter/material.dart';

import '../../../models/pet_model.dart';

class DetailsPageAbout extends StatefulWidget {
  final PetModel petModel;
  const DetailsPageAbout({super.key, required this.petModel});

  @override
  State<DetailsPageAbout> createState() => _DetailsPageAboutState();
}

class _DetailsPageAboutState extends State<DetailsPageAbout> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        left: screenSize.width * 0.072, //26
        right: screenSize.width * 0.08, //30
        bottom: screenSize.width * 0.064, //24
        top: screenSize.width * 0.010, //4
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: screenSize.width * 0.037, //14
          ),
          Text(
            widget.petModel.about,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
