import 'package:flashscore/features/pages/home/pages/ALL/pages/all_page.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AllPage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.red, // Couleur de fond rouge
      body: Center(
        child: ClipPath(
          clipper: SplashClipper(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color:
                const Color.fromARGB(255, 7, 28, 45), // Couleur de fond bleue
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
      ),
    );
  }
}

class SplashClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height); // Commence tout en bas à gauche

    // Courbe de Bézier jusqu'au centre
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height / 2);

    // Ligne jusqu'à l'extrême droite, agrandie
    path.lineTo(size.width * 1.1,
        0); // Agrandir la ligne jusqu'à 10% de plus de la largeur de l'écran

    // Ligne jusqu'au bas gauche pour fermer le chemin, élargie
    path.lineTo(-size.width * 0.1,
        0); // Déplacer la ligne vers la gauche de 10% de la largeur de l'écran pour l'élargir

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
