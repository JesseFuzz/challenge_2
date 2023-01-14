import 'package:flutter/material.dart';

class CharacterItemListComponent extends StatefulWidget {
  const CharacterItemListComponent({super.key});

  @override
  State<CharacterItemListComponent> createState() =>
      _CharacterItemListComponentState();
}

class _CharacterItemListComponentState
    extends State<CharacterItemListComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              height: 130,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/michael.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sparky',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E2D2B),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      const Text(
                        'Golden Retriever',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF686766),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Female, 8 months old',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFB5B5B5),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_sharp,
                            color: Color(0xFFFF5F50),
                            size: 15,
                          ),
                          Text(
                            '2.5 km away',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFB8B8B8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 65, right: 5),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color(0xFFBABABA),
                      ),
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
