import 'package:flutter/material.dart';

import '../../../models/pet_model.dart';

class DetailsPageHeader extends StatefulWidget {
  final PetModel petModel;
  const DetailsPageHeader({super.key, required this.petModel});

  @override
  State<DetailsPageHeader> createState() => _DetailsPageHeaderState();
}

class _DetailsPageHeaderState extends State<DetailsPageHeader> {
  @override
  Widget build(BuildContext context) {
    // final petModel = ModalRoute.of(context)!.settings.arguments! as PetModel;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        left: screenSize.width * (28 / 375),
        right: screenSize.width * (26 / 375),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.petModel.name,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: screenSize.width * (10 / 375),
              ),
              Text(
                widget.petModel.breed,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: screenSize.width * (15 / 375),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Theme.of(context).colorScheme.primary,
                        size: 18,
                      ),
                      SizedBox(
                        width: screenSize.width * (8 / 375),
                      ),
                      Text(
                        widget.petModel.location,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Transform.rotate(
                angle: 180,
                child: Icon(
                  Icons.female,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 40,
                ),
              ),
              SizedBox(
                height: screenSize.width * (14 / 375),
              ),
              Text(
                widget.petModel.sex + widget.petModel.age,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
