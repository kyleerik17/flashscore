import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class TatPage extends StatefulWidget {
  const TatPage({Key? key}) : super(key: key);

  @override
  _TatPageState createState() => _TatPageState();
}

class _TatPageState extends State<TatPage> {
  bool isText1Clicked = false;
  List<int> numberList = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    // Fonction pour construire une seule ligne pour un match
    Widget _buildMatchRow({
      required String date,
      required String team1,
      required String team2,
      required String logo1,
      required String logo2,
      required int goalsTeam1,
      required int goalsTeam2,
      required bool wonByIvoryCoast,
    }) {
      String result = wonByIvoryCoast ? 'V' : 'D'; // Résultat du match
      Color resultColor =
          wonByIvoryCoast ? Colors.green : Colors.red; // Couleur du résultat

      return Padding(
        padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(height: 5.h),
                Text(
                  date,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(width: 5.w),
                // Logo équipe 1
                Column(children: [
                  Image.asset(
                    logo1,
                    width: 3.w,
                    height: 3.w,
                  ),
                  SizedBox(width: 2.w),
                  SizedBox(height: 1.5.h),
                  Image.asset(
                    logo2,
                    width: 3.w,
                    height: 3.w,
                  ),
                ]),
                SizedBox(width: 5.w),
                // Équipe 1 et 2
                Column(
                  children: [
                    Text(
                      team1,
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      team2,
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12.h),
                Column(
                  children: [
                    SizedBox(width: 9.h),
                    Text(
                      '$goalsTeam1',
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      '$goalsTeam2',
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),

                Container(
                  width: 13.sp, // Taille du carré coloré
                  height: 13.sp,
                  color: resultColor, // Couleur dépendant du résultat
                  child: Center(
                    // Alignez le texte au centre du carré
                    child: Text(
                      result,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: Colors
                            .white, // Couleur du texte, pour être visible sur le fond coloré
                      ),
                    ),
                  ),
                ),

                SizedBox(
                    width:
                        1.w), // Ajout d'un autre espace après le carré coloré
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
            Row(
              children: [
                SizedBox(width: 2.0.w),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0.h),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  child: const Text('GLOBAL'),
                ),
                SizedBox(width: 2.0.w),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0.h),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300]!),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 2.h),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(3.0.h, 4.0.h),
                    ),
                  ),
                  child: const Text(
                    'MID-DOMICILE',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 2.0.w),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0.h),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300]!),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 2.h),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(0.h, 4.0.h),
                    ),
                  ),
                  child: const Text(
                    'CHE- EXTERIEUR',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
              child: Row(
                children: [
                  Text(
                    "   Derniers matchs : Côte d'Ivoire",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),

            _buildMatchRow(
              date: '01/05',
              team1: "Côte d'Ivoire",
              team2: 'Cameroun',
              logo1: 'assets/images/1bet.jpg',
              logo2: 'assets/images/betc.png',
              goalsTeam1: 2,
              goalsTeam2: 1,
              wonByIvoryCoast: true,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: "Côte d'Ivoire",
              team2: 'Cameroun',
              logo1: 'assets/images/1bet.jpg',
              logo2: 'assets/images/betc.png',
              goalsTeam1: 2,
              goalsTeam2: 3,
              wonByIvoryCoast: false,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: "Côte d'Ivoire",
              team2: 'Cameroun',
              logo1: 'assets/images/1bet.jpg',
              logo2: 'assets/images/betc.png',
              goalsTeam1: 5,
              goalsTeam2: 2,
              wonByIvoryCoast: true,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: "Côte d'Ivoire",
              team2: 'Cameroun',
              logo1: 'assets/images/1bet.jpg',
              logo2: 'assets/images/betc.png',
              goalsTeam1: 2,
              goalsTeam2: 1,
              wonByIvoryCoast: true,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: "Côte d'Ivoire",
              team2: 'Cameroun',
              logo1: 'assets/images/1bet.jpg',
              logo2: 'assets/images/betc.png',
              goalsTeam1: 2,
              goalsTeam2: 1,
              wonByIvoryCoast: true,
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
              child: Row(
                children: [
                  Text(
                    "  Derniers matchs : Cameroun",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
            // Liste des matchs pour le Cameroun
            _buildMatchRow(
              date: '02/05',
              team1: 'Cameroun',
              team2: "Côte d'Ivoire",
              logo1: 'assets/images/betc.png',
              logo2: 'assets/images/1bet.jpg',
              goalsTeam1: 1,
              goalsTeam2: 2,
              wonByIvoryCoast: true,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: 'Cameroun',
              team2: "Côte d'Ivoire",
              logo1: 'assets/images/betc.png',
              logo2: 'assets/images/1bet.jpg',
              goalsTeam1: 3,
              goalsTeam2: 2,
              wonByIvoryCoast: false,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: 'Cameroun',
              team2: "Côte d'Ivoire",
              logo1: 'assets/images/betc.png',
              logo2: 'assets/images/1bet.jpg',
              goalsTeam1: 2,
              goalsTeam2: 1,
              wonByIvoryCoast: true,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: 'Cameroun',
              team2: "Côte d'Ivoire",
              logo1: 'assets/images/betc.png',
              logo2: 'assets/images/1bet.jpg',
              goalsTeam1: 1,
              goalsTeam2: 2,
              wonByIvoryCoast: false,
            ),
            SizedBox(height: 1.h),
            _buildMatchRow(
              date: '02/05',
              team1: 'Cameroun',
              team2: "Côte d'Ivoire",
              logo1: 'assets/images/betc.png',
              logo2: 'assets/images/1bet.jpg',
              goalsTeam1: 2,
              goalsTeam2: 2,
              wonByIvoryCoast: false,
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
