import 'package:flashscore/features/pages/home/pages/Classement/widgets/bottomnavigationbar.dart';
import 'package:flashscore/features/pages/home/pages/Classement/widgets/competitionList.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClassementPage extends StatelessWidget {
  const ClassementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.0.h),
            Container(
              padding: EdgeInsets.all(1.w),
              color: Colors.yellow[100],
              width: double.infinity,
              height: 4.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'COMPETITIONS FAVORITES',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color.fromARGB(255, 54, 52, 52),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.0.h),
            CompetitionListe(
              competitions: [
                Competition('AFRIQUE', 'Ligues des champions CAF',
                    'assets/flags/caf.jpg'),
                Competition('AFRIQUE', 'Jeux Olympiques - Femmes',
                    'assets/flags/ang.png'),
                Competition(
                    'AFRIQUE DU SUD', 'Coupe Nedbank', 'assets/flags/ads.jpg'),
                Competition('ALGÉRIE', 'Ligue 1', 'assets/flags/alg.png'),
                Competition('ALGÉRIE', 'Ligue 2', 'assets/flags/alg.png'),
                Competition(
                    'ALLEMAGNE', '2. Bundesliga', 'assets/flags/all.jpg'),
              ],
            ),
            SizedBox(height: 1.0.h),

            SizedBox(height: 1.0.h),
            CompetitionListe(
              competitions: [
                Competition('AFRIQUE', 'Ligues des champions CAF',
                    'assets/flags/caf.jpg'),
                Competition('AFRIQUE', 'Jeux Olympiques - Femmes',
                    'assets/flags/ang.png'),
                Competition(
                    'AFRIQUE DU SUD', 'Coupe Nedbank', 'assets/flags/ads.jpg'),
                Competition('ALGÉRIE', 'Ligue 1', 'assets/flags/alg.png'),
                Competition('ALGÉRIE', 'Ligue 2', 'assets/flags/alg.png'),
                // Ajoutez plus de ligues africaines ici...
              ],
            ),
            SizedBox(height: 1.0.h),

            SizedBox(height: 1.0.h),
            CompetitionListe(
              competitions: [
                Competition('ALLEMAGNE', 'Bundesliga', 'assets/flags/all.jpg'),
                Competition(
                    'ANGLETERRE', 'Premier League', 'assets/flags/ang.png'),
                Competition('ESPAGNE', 'La Liga', 'assets/flags/es.png'),
                Competition('FRANCE', 'Ligue 1', 'assets/flags/fr.png'),
                Competition('ITALIE', 'Serie A', 'assets/flags/ita.jpg'),
              ],
            ),
            SizedBox(height: 1.0.h),

            SizedBox(height: 1.0.h),
            CompetitionListe(
              competitions: [
                Competition(
                    'ARGENTINE', 'Primera Division', 'assets/flags/arg.png'),
                Competition('BRÉSIL', 'Série A', 'assets/flags/br.png'),
                Competition(
                    'CHILI', 'Primera Division', 'assets/flags/chi.png'),
                // Ajoutez plus de ligues sud-américaines ici...
              ],
            ),
            // Ajoutez plus de conteneurs pour d'autres continents si nécessaire...
          ],
        ),
      ),
      bottomNavigationBar: const ClassementBottomNavigationBarPage(),
    );
  }
}
