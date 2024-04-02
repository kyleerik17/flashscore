import 'package:flashscore/features/pages/home/pages/ALL/widgets/competitionList.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sizer/sizer.dart';

import '../widgets/bottomnavigationbar.dart';

class AllPage extends StatelessWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('fr', null);

    final currentDate = DateTime.now();
    const daysToShow = 7;

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
                const Icon(Icons.sports_soccer, color: Colors.white),
                SizedBox(width: 3.w),
                Text(
                  'Football',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 3.w),
                const Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add_alt_sharp,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AllBottomNavigationBarPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    daysToShow,
                    (index) {
                      final currentDay = currentDate
                          .add(Duration(days: index - (daysToShow ~/ 2)));
                      final formattedDate =
                          DateFormat('dd.MM.').format(currentDay);
                      bool isToday = index == daysToShow ~/ 2;
                      return Column(
                        children: [
                          Text(
                            isToday
                                ? 'AJD'
                                : DateFormat.E('fr').format(currentDay),
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: isToday
                                  ? const Color.fromARGB(255, 255, 21, 5)
                                  : Colors.black,
                            ),
                          ),
                          Stack(
                            children: [
                              Text(
                                formattedDate,
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: isToday
                                      ? const Color.fromARGB(255, 255, 21, 5)
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 1.0.h),
                Center(
                  child: Container(
                    color: Colors.red,
                    height: 0.5.h,
                    width: 5.h,
                  ),
                ),
                SizedBox(height: 1.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.format_list_numbered,
                          size: 8.w,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Tous les matchs',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.w),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(2.w),
                          ),
                          child: Text(
                            '47',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w),
                        Text(
                          '369',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h),
                Container(
                  padding: EdgeInsets.all(1.w),
                  color: Colors.yellow[100],
                  width: double.infinity,
                  height: 3.h,
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
                    Competition(
                        'ALLEMAGNE', 'Bundesliga', 'assets/flags/all.jpg'),
                    Competition(
                        'ANGLETERRE', 'Premier League', 'assets/flags/ang.png'),
                    Competition('ESPAGNE', 'Liga', 'assets/flags/es.jpg'),
                    Competition('FRANCE', 'Ligue 1', 'assets/flags/fr.png'),
                    Competition('ITALIE', 'Serie A', 'assets/flags/ita.jpg')
                  ],
                ),
                SizedBox(height: 1.0.h),
                Container(
                  padding: EdgeInsets.all(1.w),
                  color: Colors.grey[100],
                  width: double.infinity,
                  height: 3.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'COMPETITIONS [A-Z]',
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
                    Competition('AFRIQUE DU SUD', 'Coupe Nedbank',
                        'assets/flags/ads.jpg'),
                    Competition('ALGERIE', 'Ligue 1', 'assets/flags/alg.png'),
                    Competition('ALGERIE', 'Ligue 2', 'assets/flags/alg.png'),
                    Competition(
                        'ALLEMAGNE', '2. Bundesligua', 'assets/flags/all.jpg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
