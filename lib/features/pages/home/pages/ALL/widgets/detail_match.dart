import 'package:flashscore/features/pages/home/pages/ALL/widgets/competitionList.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CompetitionDetailsPage extends StatelessWidget {
  final String country;
  final String league;

  const CompetitionDetailsPage({
    Key? key,
    required this.country,
    required this.league, required Competition competition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pays: $country',
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(height: 2.h),
            Text(
              'Ligue: $league',
              style: TextStyle(fontSize: 18.sp),
            ),
          ],
        ),
      ),
    );
  }
}
