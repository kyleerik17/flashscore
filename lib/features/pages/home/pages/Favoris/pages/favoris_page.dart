import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import '../widgets/bottomnavigationbar.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({Key? key}) : super(key: key);

  @override
  _FavorisPageState createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  bool isText1Clicked = false;
  List<int> numberList = [1, 2, 3];

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
                Text(
                  'Favoris',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star_rate, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(2.0.h),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isText1Clicked = true;
                    });
                  },
                  child: Text(
                    'MATCHS',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: isText1Clicked ? Colors.pink : Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 2.h),
                InkWell(
                  onTap: () {
                    setState(() {
                      isText1Clicked = false;
                    });
                  },
                  child: Text(
                    'ACTUALITÉS',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: isText1Clicked ? Colors.black : Colors.pink,
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
            Row(
              children: [
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
                  child: const Text('TOUS LES MATCHS'),
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
                    'LIVE',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 13.h),
                const Icon(Icons.star, color: Colors.black),
              ],
            ),
            if (isText1Clicked)
              Column(
                children: [
                  SizedBox(height: 2.0.h),
                  Visibility(
                    visible: isText1Clicked,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.h),
                          Text(
                            'Ajoutez votre première équipe',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Center(
                            child: Text(
                              'Retrouvez hdfduhvbie erbfejfjec erifeirfierf ekrfbek eijrbeijbrf efuerzuheue ufube.',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.0.h),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 6, 12, 21),
                              ),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                  horizontal: 2.0.w,
                                ),
                              ),
                            ),
                            child: Text(
                              'RECHERCHE EQUIPE',
                              style: TextStyle(fontSize: 13.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
      bottomNavigationBar: const FavorisBottomNavigationBarPage(),
    );
  }
}
