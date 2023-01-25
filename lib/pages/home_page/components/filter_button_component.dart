import 'package:flutter/material.dart';

import '../../../data/pet_filter_mock.dart';

class FilterButtonComponent extends StatefulWidget {
  final PetFilterMock filterList;

  const FilterButtonComponent({super.key, required this.filterList});

  @override
  State<FilterButtonComponent> createState() => _FilterButtonComponentState();
}

class _FilterButtonComponentState extends State<FilterButtonComponent> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 70,
      width: screenSize.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.filterList.dummyFilters.length,
        itemBuilder: (BuildContext context, int index) {
          final pet = widget.filterList.dummyFilters[index];
          return Container(
            margin: const EdgeInsets.only(
              left: 27,
              top: 20,
              bottom: 5,
            ),
            padding: const EdgeInsets.only(
              right: 5,
              left: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: pet.isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).primaryColor,
            ),
            child: InkWell(
              onTap: () {
                setState(
                  () {
                    pet.isSelected = !pet.isSelected;
                  },
                );
              },
              child: Row(
                children: [
                  if (pet.isSelected)
                    Icon(
                      pet.icon.icon,
                      color: Theme.of(context).primaryColor,
                    )
                  else
                    Icon(
                      pet.icon.icon,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  const SizedBox(width: 5),
                  Text(
                    pet.type,
                    style: TextStyle(
                      color: pet.isSelected
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.tertiary,
                      fontSize: 20,
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
