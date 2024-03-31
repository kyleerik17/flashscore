import 'package:flashscore/features/pages/home/pages/ALL/pages/all_page.dart';
import 'package:flutter/material.dart';


class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Attendre 3 secondes puis naviguer vers AllPage
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AllPage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.red, // Couleur de fond rouge
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue, // Couleur de texte bleu
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Flashscore',
              style: TextStyle(
                color: Colors.white, // Couleur de texte blanc
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
