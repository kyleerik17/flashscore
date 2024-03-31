import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../home.dart';

class FavorisBottomNavigationBarPage extends StatelessWidget {
  const FavorisBottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 10.w,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AllPage()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/st.png',
                    width: 9.w,
                    height: 9.w,
                  ),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
            label: 'Tous',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DirectPage()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/hp.png', width: 9.w, height: 9.w),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
            label: 'Direct',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavorisPage(),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  Image.asset('assets/images/et.png',
                      width: 9.w,
                      height: 9.w,
                      color: Colors.red), // Icône en rouge
                  SizedBox(height: 1.h),
                  const Text(
                    'Favoris',
                    style: TextStyle(color: Colors.red), // Texte en rouge
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ActualitePage(),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  Image.asset('assets/images/ac.png',
                      width: 9.w,
                      height: 9.w,
                      color: Colors.black), // Icône en rouge
                  SizedBox(height: 1.h),
                  const Text(
                    'Actualité',
                    style: TextStyle(color: Colors.black), // Texte en rouge
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ClassementPage(),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/tp.png', width: 9.w, height: 9.w),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
            label: 'Classement',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.red),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
