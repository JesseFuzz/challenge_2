import 'package:flutter/material.dart';

import '../../../data/pet_mock.dart';

class PetListSliver extends StatefulWidget {
  const PetListSliver({super.key});

  @override
  State<PetListSliver> createState() => _PetListSliverState();
}

class _PetListSliverState extends State<PetListSliver> {
  @override
  Widget build(BuildContext context) {
    final petMock = PetMock();
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: petMock.dummyPets.length, (context, index) {
              final petList = petMock.dummyPets[index];

              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/details',
                    arguments: petList,
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
                        height: size.width * 0.272,
                        width: size.width * 0.282,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(
                              petList.imageAssetPath,
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
                            petList.name,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            petList.breed,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            petList.sex + petList.age,
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
                                petList.location,
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
                          icon: petList.isSelected
                              ? Icon(
                                  Icons.favorite,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 25,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  size: 25,
                                ),
                          onPressed: () {
                            setState(
                              () {
                                petList.isSelected = !petList.isSelected;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
