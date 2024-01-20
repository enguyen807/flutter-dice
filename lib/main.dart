import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Color.fromRGBO(77, 208, 225, 1), Color.fromRGBO(129, 199, 132, 1)]),
      ),
    ),
  );
}


