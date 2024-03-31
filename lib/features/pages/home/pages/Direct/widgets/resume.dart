import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(2.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 2.5.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1.Mi-temps',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            // Sous-titre 1
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),

            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 2.5.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1.Mi-temps',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            // Sous-titre 1
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      14.w), // Ajustez la marge horizontale selon vos besoins
              child: ElevatedButton(
                onPressed: () {
                  // Action à exécuter lorsque le bouton est appuyé
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Couleur de fond du bouton
                  onPrimary: Colors.white, // Couleur du texte du bouton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        3.w), // Bordure arrondie du bouton
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PARIEZ SUR CE MATCH EN LIVE', // Texte du sous-titre
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 2.5.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1.Mi-temps',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            // Sous-titre 1
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),

            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 2.5.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1.Mi-temps',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            // Sous-titre 1
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 2.h),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 2.5.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1.Mi-temps',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            // Sous-titre 1
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),

            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), // Icône du sous-titre
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', // Texte du sous-titre
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    ));
  }
}
