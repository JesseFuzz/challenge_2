import 'package:desafio_2/pages/details_page/components/details_page_about.dart';
import 'package:desafio_2/pages/details_page/components/details_page_app_bar.dart';
import 'package:desafio_2/pages/details_page/components/details_page_header.dart';
import 'package:desafio_2/pages/details_page/components/details_page_photos.dart';
import 'package:flutter/material.dart';

import 'components/detais_page_adopt_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: DetailsPageAppBar(),
      ),
      body: Column(
        children: const [
          DetailsPageHeader(),
          DetailsPagePhotos(),
          DetailsPageAbout(),
          Align(
            alignment: Alignment.bottomRight,
            child: DetailsPageAdoptButton(),
          ),
        ],
      ),
    );
  }
}
