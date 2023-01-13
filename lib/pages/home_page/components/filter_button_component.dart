import 'package:flutter/material.dart';

class FilterButtonComponent extends StatefulWidget {
  const FilterButtonComponent({
    super.key,
  });

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
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(
              left: 27,
              top: 20,
              bottom: 5,
            ),
            padding: const EdgeInsets.only(
              right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFFF5F50),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite, color: Colors.white),
                  ),
                  const Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.white,
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
