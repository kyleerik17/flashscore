import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class ClassementPage extends StatelessWidget {
  const ClassementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
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
            const Spacer(), // Ajout du Spacer pour pousser les éléments à droite
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
                SizedBox(width: 2.5.h),
                const Text(
                  'B',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 2.h),
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
            Image.asset(
              'assets/images/1bet.jpg',
              width: 5.w,
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
            const Spacer(),
            Row(
              children: [
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
          ],
        ),
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(2.w),
            child: Column(children: [
              _buildHeader(context),
              _buildTeamRow(
                position: '  1',
                teamName: 'Real Madrid',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  2',
                teamName: 'Leganes',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Real Sociedad',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
              _buildTeamRow(
                position: '  3',
                teamName: 'Barcelone',
                matchesPlayed: '38',
                goalsScored: '106',
                points: '93',
              ),
            ])));
  }
}
