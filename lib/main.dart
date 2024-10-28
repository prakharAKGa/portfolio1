import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:prakhar_portfolio/screens/home.dart';

void main() async {
 

  runApp(const PrakharSrivastava());
}

class PrakharSrivastava extends StatelessWidget {
  const PrakharSrivastava({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Prakhar Srivastava',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ebrima'
      ),
      home: const Home(),
    ).animate().fadeIn(duration: 500.milliseconds);
  }
}