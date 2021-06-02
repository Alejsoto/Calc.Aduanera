import 'package:calcu_ladora/Widget/principal.dart';
import 'package:calcu_ladora/src/lala.dart';
import 'package:flutter/material.dart';

import 'package:calcu_ladora/Widget/bacground.dart';
import 'package:calcu_ladora/Widget/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Fondo
        Background(),

        _HomeBody()
      ],
    ));
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        //Tituloss
        PageTitle(),

        //

        MyCalculator(),
      ],
    ));
  }
}
