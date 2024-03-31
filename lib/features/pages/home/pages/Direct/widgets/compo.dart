import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class CompoPage extends StatelessWidget {
  const CompoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> joueursPSG2016 = [
      'Kevin Trapp',
      'Thomas Meunier',
      'Thiago Silva',
      'David Luiz',
      'Layvin Kurzawa',
      'Marco Verratti',
      'Thiago Motta (C)',
      'Blaise Matuidi',
      'Lucas Moura',
      'Edinson Cavani',
      'Ángel Di María',
    ];

    List<String> joueursRealMadrid2016 = [
      'Keylor Navas',
      'Dani Carvajal',
      '(C) Sergio Ramos ',
      'Pepe',
      'Marcelo',
      'Casemiro',
      'Luka Modrić',
      'Toni Kroos',
      'Gareth Bale',
      'Karim Benzema',
      'Cristiano Ronaldo',
    ];

    List<String> remplacantsPSG2016 = [
      'Alphonse Areola',
      'Presnel Kimpembe',
      'Maxwell',
      'Javier Pastore',
      'Hatem Ben Arfa',
      'Jesé',
      'Jean-Kévin Augustin',
      'Javier Pastore',
      'Hatem Ben Arfa',
      'Jesé',
      'Jean-Kévin Augustin',
    ];

    List<String> remplacantsRealMadrid2016 = [
      'Kiko Casilla',
      'Danilo',
      'Raphaël Varane',
      'Mateo Kovačić',
      'James Rodríguez',
      'Isco',
      'Álvaro Morata',
      'Mateo Kovačić',
      'James Rodríguez',
      'Isco',
      'Álvaro Morata',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(4.w),
            ),
            Image.asset(
              'assets/images/cp.png', // Chemin de l'image dans votre projet
              width:
                  150.0.w, // Largeur de l'image en utilisant le package Sizer
              height:
                  100.0.w, // Hauteur de l'image en utilisant le package Sizer
              fit: BoxFit.contain, // Pour ajuster l'image dans le conteneur
            ),
            Gap(4.h),
            Row(
              children: [
                Text(
                  '   Composition de départ',
                  style: TextStyle(fontSize: 13.sp),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1.0,
              height: 1.w,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: joueursPSG2016.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        joueursPSG2016[index],
                        style: TextStyle(fontSize: 11.0.sp),
                      ),
                      Text(
                        joueursRealMadrid2016[index],
                        style: TextStyle(fontSize: 11.0.sp),
                      ),
                    ],
                  ),
                );
              },
            ),
            Gap(4.h),
            Row(
              children: [
                Text(
                  '     Remplaçant',
                  style: TextStyle(fontSize: 13.sp),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1.0,
              height: 1.w,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: remplacantsPSG2016.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        remplacantsPSG2016[index],
                        style: TextStyle(fontSize: 11.0.sp),
                      ),
                      Text(
                        remplacantsRealMadrid2016[index],
                        style: TextStyle(fontSize: 11.0.sp),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
