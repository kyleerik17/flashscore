import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DirectListItem extends StatefulWidget {
  const DirectListItem({
    Key? key,
    required this.countryImage,
    required this.countryName,
    required this.secondCountryImage,
    required this.secondCountryName,
    required this.firstValue,
    required this.secondValue,
    required this.rightText,
    required this.onTap,
  }) : super(key: key);

  final String countryImage;
  final String countryName;
  final String secondCountryImage;
  final String secondCountryName;
  final String firstValue;
  final String secondValue;
  final String rightText;
  final VoidCallback onTap;

  @override
  _DirectListItemState createState() => _DirectListItemState();
}

class _DirectListItemState extends State<DirectListItem> {
  bool isText1Clicked = false;
  List<int> numberList = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
              size: 8.w,
            ),
          ),
          SizedBox(width: 8.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    widget.countryImage,
                    height: 16.sp,
                    width: 16.sp,
                  ),
                  SizedBox(width: 8.sp),
                  Text(widget.countryName),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Image.asset(
                    widget.secondCountryImage,
                    height: 18.sp,
                    width: 18.sp,
                  ),
                  SizedBox(width: 8.sp),
                  Text(widget.secondCountryName),
                ],
              ),
            ],
          ),
          SizedBox(width: 8.sp),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.firstValue,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.pink,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        child: Text(
                          widget.rightText,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.secondValue,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.sp),
        ],
      ),
    );
  }
}
