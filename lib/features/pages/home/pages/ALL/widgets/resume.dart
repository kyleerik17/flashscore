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
           
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), 
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023',
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
                    color: Colors.grey), 
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023',
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
                  'COTES LIVE',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
         
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey),
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023',
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
                      14.w), 
              child: ElevatedButton(
                onPressed: () {
      
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, 
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        3.w), 
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PARIEZ SUR CE MATCH EN LIVE', 
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
                  'COTES',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
     
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), 
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', 
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
                    color: Colors.grey),
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', 
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 2.5.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'TV/ LIVE STREAMING',
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),

            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey), 
                SizedBox(width: 2.w),
                Text(
                  '1xBet',
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
  
            Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: Colors.grey),
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023', 
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
                const Icon(Icons.calendar_today, color: Colors.grey),
                SizedBox(width: 2.w),
                Text(
                  'Date du match : 18.03.2023',
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
