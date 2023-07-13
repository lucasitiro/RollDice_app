import 'package:flutter/material.dart';

import 'package:one_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientConteiner(
          Color.fromARGB(255, 39, 12, 85),
          Color.fromARGB(255, 67, 30, 131),
          ),
      ),
    ),
  );
}


