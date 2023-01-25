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
    // final petModel = ModalRoute.of(context)?.settings.arguments as PetModel;

    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
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
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.petModel.breed,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                height: 10,
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
                      const SizedBox(
                        width: 5,
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
                child: Icon(Icons.female, color: Colors.grey[350], size: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.petModel.sex + widget.petModel.age,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
