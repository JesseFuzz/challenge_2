import 'package:desafio_2/data/pet_mock.dart';
import 'package:flutter/material.dart';

class PetItemListComponent extends StatefulWidget {
  final PetMock petList;

  const PetItemListComponent({super.key, required this.petList});

  @override
  State<PetItemListComponent> createState() => _PetItemListComponent();
}

class _PetItemListComponent extends State<PetItemListComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.petList.dummyPets.length,
        itemBuilder: (context, index) {
          final petMock = widget.petList.dummyPets[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: petMock,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              height: 115,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          petMock.imageAssetPath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        petMock.name,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        petMock.breed,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        petMock.sex + petMock.age,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Theme.of(context).colorScheme.primary,
                            size: 15,
                          ),
                          Text(
                            petMock.location,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 65, right: 5),
                    child: IconButton(
                      icon: petMock.isSelected
                          ? Icon(
                              Icons.favorite,
                              color: Theme.of(context).colorScheme.primary,
                              size: 25,
                            )
                          : Icon(
                              Icons.favorite_border,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 25,
                            ),
                      onPressed: () {
                        setState(
                          () {
                            petMock.isSelected = !petMock.isSelected;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
