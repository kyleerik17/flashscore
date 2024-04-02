import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../Classement/pages/classement_page.dart';
import 'competitionList.dart';

class CompetitionDetailPage extends StatefulWidget {
  final String country;
  final String league;
  final String flagPath;
  String formattedDate = DateFormat('dd.MM.').format(DateTime.now());

  CompetitionDetailPage({
    Key? key,
    required this.country,
    required this.league,
    required this.flagPath,
    required Competition competition,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CompetitionDetailPageState createState() => _CompetitionDetailPageState();
}

class _CompetitionDetailPageState extends State<CompetitionDetailPage> {
  bool isStarFilled = false;

  void toggleStar() {
    setState(() {
      isStarFilled = !isStarFilled;
    });
  }

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
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
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
                  onPressed: toggleStar,
                  icon: Icon(
                    isStarFilled ? Icons.star : Icons.star_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(2.w),
        child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '     Ajd ${widget.formattedDate}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const Icon(Icons.calendar_today),
                ],
              ),
              SizedBox(
                height: 1.0.h,
              ),
              Container(
                padding: EdgeInsets.all(2.0.w),
                color: Colors.grey[300],
                height: 9.h,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/flags/jo.png',
                              width: 12.0.w,
                              height: 5.0.h,
                            ),
                            SizedBox(
                              width: 2.0.w,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.country,
                                style: TextStyle(
                                  fontSize: 10.0.sp,
                                  color: const Color.fromARGB(255, 54, 52, 52),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 6.5.h),
                            Image.asset(
                              'assets/flags/caf.jpg',
                              width: 4.0.w,
                              height: 2.0.h,
                            ),
                            SizedBox(width: 1.0.w),
                            Text(
                              widget.league,
                              style: TextStyle(
                                fontSize: 10.0.sp,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: toggleStar,
                        icon: Icon(
                          isStarFilled ? Icons.star : Icons.star_outline,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/flags/caf.jpg',
                                width: 5.w,
                                height: 5.w,
                              ),
                              SizedBox(width: 2.0.w),
                              Text(
                                'Bayern Munich',
                                style: TextStyle(
                                  fontSize: 9.0.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.0.h),
                          Row(
                            children: [
                              Image.asset(
                                'assets/flags/caf.jpg',
                                width: 5.0.w,
                                height: 5.0.w,
                              ),
                              SizedBox(width: 2.0.w),
                              Text(
                                ' Burussia Dortmund',
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '19:30',
                    style: TextStyle(fontSize: 12.0.sp),
                  ),
                ],
              ),
              SizedBox(height: 2.0.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ClassementPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.menu),
                        SizedBox(width: 3.w),
                        const Text(
                          'Classement',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
