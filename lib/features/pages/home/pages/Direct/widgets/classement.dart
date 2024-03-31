import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class ClassementPage extends StatelessWidget {
  const ClassementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildHeader(BuildContext context) {
      return Container(
        color: Colors.grey[300],
        padding: EdgeInsets.all(2.w),
        child: Row(
          children: [
            const Text(
              '# Équipe',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'MJ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 3.h),
                const Text(
                  'B',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 3.h),
                const Text(
                  'Pts',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Fonction pour construire une seule ligne pour une équipe
    Widget _buildTeamRow({
      required String position,
      required String teamName,
      required String matchesPlayed,
      required String goalsScored,
      required String points,
    }) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 0.5.w),
        child: Row(
          children: [
            Text(
              position,
              textAlign: TextAlign.center,
            ),
            Gap(0.5.h),
            Image.asset(
              'assets/images/1bet.jpg',
              width: 6.w,
              height: 5.w,
            ),
            Gap(1.h),
            Text(
              teamName,
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 18.5.h,
            ),
            Text(
              matchesPlayed,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              goalsScored,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              points,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(2.w),
            child: Column(children: [
              _buildHeader(context),
              // Liste des équipes avec leurs statistiques
              _buildTeamRow(
                position: ' 1',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  2',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  4',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  5',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  6',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  7',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  8',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  9',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '10',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '11',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '12',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '13',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '14',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '15',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '16',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '17',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '18',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '19',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '20',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '21',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '22',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '23',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '24',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '25',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '26',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '27',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '28',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '29',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '30',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '31',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '32',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '33',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '34',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '35',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
            ])));
  }
}
