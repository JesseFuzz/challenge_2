import 'package:flutter/material.dart';

import '../../../data/pet_mock.dart';

class PetListSliver extends StatefulWidget {
  final PetMock petMock;
  const PetListSliver({super.key, required this.petMock});

  @override
  State<PetListSliver> createState() => _PetListSliverState();
}

class _PetListSliverState extends State<PetListSliver> {
  @override
  Widget build(BuildContext context) {
    // final petMock = PetMock();
    final screenSize = MediaQuery.of(context).size;

    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: widget.petMock.dummyPets.length,
              (context, index) {
                final petList = widget.petMock.dummyPets[index];

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
                    margin: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.048, //24,
                      vertical: screenSize.width * 0.032, //12
                    ),
                    height: screenSize.width * 0.325,
                    width: screenSize.width * 0.874,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.021,
                            vertical: screenSize.width * 0.016, //6
                          ),
                          //widgetAltura/375 e multiplica pela altura do dispositivo
                          height: screenSize.width * 0.272,
                          //WidgetLargura/375 e multiplica pela largura do dispositivo
                          width: screenSize.width * 0.282,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
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
                            SizedBox(
                              height: screenSize.width * 0.016,
                            ),
                            Text(
                              petList.breed,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(
                              height: screenSize.width * 0.024, //9
                            ),
                            Text(
                              petList.sex + petList.age,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(
                              height: screenSize.width * 0.048, //18
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
                          margin: EdgeInsets.only(
                            bottom: screenSize.width * 0.218, //82
                            right: screenSize.width * 0.0506, //19
                          ),
                          child: IconButton(
                            icon: petList.isSelected
                                ? Icon(
                                    Icons.favorite,
                                    color:
                                        Theme.of(context).colorScheme.primary,
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
              },
            ),
          )
        ],
      ),
    );
  }
}
