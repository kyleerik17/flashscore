import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flashscore/features/pages/home/pages/Actualité/widgets/bottomnavigationbar.dart';

class ActualitePage extends StatefulWidget {
  const ActualitePage({Key? key}) : super(key: key);

  @override
  _ActualitePageState createState() => _ActualitePageState();
}

class _ActualitePageState extends State<ActualitePage> {
  String _selectedSport = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 6, 12, 21),
        toolbarHeight: 6.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 3.w),
                Text(
                  'Actualités',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildSportButton('TOUS'),
            buildSportButton('BASKETBALL'),
            buildSportButton('TENNIS'),
            buildSportButton('GOLF'),
            buildSportButton('HANDBALL'),
            buildSportButton('RUGBY'),
            buildSportButton('PING PONG'),
            buildSportButton('VOLLEYBALL'),
          ],
        ),
      ),
      bottomNavigationBar: const ActualiteBottomNavigationBarPage(),
    );
  }

  Widget buildSportButton(String sportName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: TextButton(
        onPressed: () {
          setState(() {
            _selectedSport = sportName;
          });
        },
        child: Text(
          sportName,
          style: TextStyle(
            fontSize: 7.sp,
            color: _selectedSport == sportName ? Colors.pink : Colors.black,
          ),
        ),
      ),
    );
  }
}
