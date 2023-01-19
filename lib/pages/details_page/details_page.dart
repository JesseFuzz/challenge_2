import 'package:desafio_2/pages/details_page/components/details_page_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: DetailsPageAppBar(),
      ),
      body: Center(
        child: Text('Details Page'),
      ),
    );
  }
}
