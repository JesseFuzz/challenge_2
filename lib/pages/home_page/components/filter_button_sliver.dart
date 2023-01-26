import 'package:flutter/material.dart';

import '../../../data/pet_filter_mock.dart';

class FilterButtonSliver extends StatefulWidget {
  final PetFilterMock filterList;
  const FilterButtonSliver({super.key, required this.filterList});

  @override
  State<FilterButtonSliver> createState() => _FilterButtonSliverState();
}

class _FilterButtonSliverState extends State<FilterButtonSliver> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.width * 0.2,
      width: screenSize.width,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: widget.filterList.dummyFilters.length,
              (context, index) {
                final pet = widget.filterList.dummyFilters[index];
                return Container(
                  margin: EdgeInsets.only(
                    left: screenSize.width * 0.0533, //20,
                    top: screenSize.width * 0.0586, //22
                    bottom: screenSize.width * 0.0186, //7
                  ),
                  padding: EdgeInsets.only(
                    right: screenSize.width * 0.026, //10
                    left: screenSize.width * 0.026, //10
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
          ),
        ],
      ),
    );
  }
}
