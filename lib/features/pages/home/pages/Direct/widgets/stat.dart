import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StatPage extends StatelessWidget {
  const StatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildStatRow(
                'Possession de balle',
                '60%',
                '40%',
                Colors.blue,
                Colors.red,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Tirs au but',
                '10%',
                '90%',
                Colors.green,
                Colors.orange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Tirs cadrés',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Tirs non cadrés',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Corners',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Sauvetage du gardien ',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Cartons jaunes',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Attaques',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
              SizedBox(height: 0.5.h),
              buildStatRow(
                'Attaques dangereuses',
                '10%',
                '90%',
                Colors.red,
                Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatRow(String title, String homePercentage,
      String awayPercentage, Color homeColor, Color awayColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 1.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  homePercentage,
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                flex: 8,
                child: buildProgressIndicator(homePercentage, homeColor),
              ),
              Expanded(
                flex: 8,
                child: buildProgressIndicator(awayPercentage, awayColor),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  awayPercentage,
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProgressIndicator(String percentage, Color color) {
    return LinearProgressIndicator(
      value: 0.4,
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }
}
