import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import '../widgets/bottomnavigationbar.dart';
import '../widgets/direct_list_item.dart';
import '../widgets/match_details.dart';

class DirectPage extends StatelessWidget {
  const DirectPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(9.sp),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(1.w),
                color: Colors.grey[300],
                width: double.infinity,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/flags/jo.png',
                              width: 12.w,
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 6.sp,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Jeux Olympiques-Femmes',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color.fromARGB(255, 54, 52, 52),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Gap(5.h),
                            Image.asset(
                              'assets/flags/caf.jpg', 
                              width: 8.w,
                              height: 2.h,
                            ),
                            Text(
                              'AFRIQUE',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              DirectListItem(
                countryImage: 'assets/flags/alg.png',
                countryName: 'Algerie',
                secondCountryImage: 'assets/flags/tzn.png',
                secondCountryName: 'Tanzanie',
                rightText: "Mi-temps",
                firstValue: '3',
                secondValue: '4',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchDetailsPage(
                        countryImage: 'assets/flags/alg.png',
                        countryName: 'Algerie',
                        secondCountryImage: 'assets/flags/tzn.png',
                        secondCountryName: 'Tanzanie',
                        rightText: "Mi-temps",
                        firstValue: '3',
                        secondValue: '4',
                      ),
                    ),
                  );
                },
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
              DirectListItem(
                countryImage: 'assets/flags/alg.png',
                countryName: 'Maroc',
                secondCountryImage: 'assets/flags/tzn.png',
                secondCountryName: "Cote d'ivoire",
                rightText: "23'",
                firstValue: '0',
                secondValue: '9',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchDetailsPage(
                        countryImage: 'assets/flags/alg.png',
                        countryName: 'Maroc',
                        secondCountryImage: 'assets/flags/tzn.png',
                        secondCountryName: "Cote d'ivoire",
                        rightText: "23'",
                        firstValue: '0',
                        secondValue: '9',
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 2.0.h),
              Container(
                padding: EdgeInsets.all(1.w),
                color: Colors.grey[200],
                width: double.infinity,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/flags/jo.png',
                              width: 12.w,
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 6.sp,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'League des champions',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color.fromARGB(255, 54, 52, 52),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Gap(5.h),
                            Image.asset(
                              'assets/flags/caf.jpg', 
                              width: 8.w,
                              height: 2.h,
                            ),
                            Text(
                              'EUROPE',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.0.h),
              DirectListItem(
                countryImage: 'assets/flags/alg.png',
                countryName: 'Grenade',
                secondCountryImage: 'assets/flags/tzn.png',
                secondCountryName: "Real Madrid",
                rightText: "23'",
                firstValue: '2',
                secondValue: '1',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchDetailsPage(
                        countryImage: 'assets/flags/alg.png',
                        countryName: 'Grenade',
                        secondCountryImage: 'assets/flags/tzn.png',
                        secondCountryName: "Real Madrid",
                        rightText: "23'",
                        firstValue: '2',
                        secondValue: '1',
                      ),
                    ),
                  );
                },
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
              DirectListItem(
                countryImage: 'assets/flags/alg.png',
                countryName: 'Grenade',
                secondCountryImage: 'assets/flags/tzn.png',
                secondCountryName: "Barcelone",
                rightText: "23'",
                firstValue: '2',
                secondValue: '9',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchDetailsPage(
                        countryImage: 'assets/flags/alg.png',
                        countryName: 'Grenade',
                        secondCountryImage: 'assets/flags/tzn.png',
                        secondCountryName: "Barcelone",
                        rightText: "23'",
                        firstValue: '2',
                        secondValue: '9',
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 2.0.h),
              Container(
                padding: EdgeInsets.all(1.w),
                color: Colors.grey[200],
                width: double.infinity,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/flags/jo.png',
                              width: 10.w,
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LIGUE 1',
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color: const Color.fromARGB(255, 54, 52, 52),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Gap(5.h),
                            Image.asset(
                              'assets/flags/caf.jpg', 
                              width: 14.w,
                              height: 2.h,
                            ),
                            SizedBox(width: 0.w),
                            Text(
                              'France',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.0.h),
              DirectListItem(
                countryImage: 'assets/flags/alg.png',
                countryName: 'Marseille',
                secondCountryImage: 'assets/flags/tzn.png',
                secondCountryName: "Paris Fc",
                rightText: "23'",
                firstValue: '2',
                secondValue: '3',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchDetailsPage(
                        countryImage: 'assets/flags/alg.png',
                        countryName: 'Marseille',
                        secondCountryImage: 'assets/flags/tzn.png',
                        secondCountryName: "Paris Fc",
                        rightText: "23'",
                        firstValue: '2',
                        secondValue: '3',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DirectBottomNavigationBarPage(),
    );
  }
}
