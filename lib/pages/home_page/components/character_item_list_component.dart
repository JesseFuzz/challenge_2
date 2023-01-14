import 'package:desafio_2/data/the_office_character_mock.dart';
import 'package:flutter/material.dart';

class CharacterItemListComponent extends StatefulWidget {
  final TheOfficeCharacterMock characterList;

  const CharacterItemListComponent({super.key, required this.characterList});

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
        itemCount: widget.characterList.dummyCharacters.length,
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
                      image: DecorationImage(
                        image: AssetImage(
                          widget.characterList.dummyCharacters[index]
                              .imageAssetPath,
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
                        widget.characterList.dummyCharacters[index].name,
                        style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E2D2B),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        widget.characterList.dummyCharacters[index].position,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xFF686766),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        widget.characterList.dummyCharacters[index].age,
                        style: const TextStyle(
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
                      icon:
                          widget.characterList.dummyCharacters[index].isSelected
                              ? const Icon(
                                  Icons.favorite,
                                  color: Color(0xFFFF5F50),
                                )
                              : const Icon(
                                  Icons.favorite_border,
                                  color: Color(0xFFBABABA),
                                ),
                      onPressed: () {
                        setState(
                          () {
                            widget.characterList.dummyCharacters[index]
                                    .isSelected =
                                !widget.characterList.dummyCharacters[index]
                                    .isSelected;
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
