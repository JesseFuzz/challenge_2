import 'package:flutter/material.dart';

import '../../../data/the_office_filter_mock.dart';

class FilterButtonComponent extends StatefulWidget {
  final TheOfficeFilterMock filterList;

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
              color: widget.filterList.dummyFilters[index].isSelected
                  ? const Color(0xFFFF5F50)
                  : Colors.white,
            ),
            child: InkWell(
              onTap: () {
                setState(
                  () {
                    widget.filterList.dummyFilters[index].isSelected =
                        !widget.filterList.dummyFilters[index].isSelected;
                  },
                );
              },
              child: Row(
                children: [
                  if (widget.filterList.dummyFilters[index].isSelected)
                    Icon(
                      widget.filterList.dummyFilters[index].icon.icon,
                      color: Colors.white,
                    )
                  else
                    Icon(
                      widget.filterList.dummyFilters[index].icon.icon,
                      color: Colors.grey,
                    ),
                  const SizedBox(width: 5),
                  Text(
                    widget.filterList.dummyFilters[index].type,
                    style: TextStyle(
                      color: widget.filterList.dummyFilters[index].isSelected
                          ? Colors.white
                          : Colors.black,
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
