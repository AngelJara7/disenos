import 'package:flutter/material.dart';

import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/Background.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),

          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),

          CardTable()
        ],
      ),
    );
  }
}