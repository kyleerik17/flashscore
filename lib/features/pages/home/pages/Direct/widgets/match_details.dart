import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../pages/direct.dart';

class MatchDetailsPage extends StatefulWidget {
  final String countryImage;
  final String countryName;
  final String secondCountryImage;
  final String secondCountryName;
  final String rightText;
  final String firstValue;
  final String secondValue;

  MatchDetailsPage({
    Key? key,
    required this.countryImage,
    required this.countryName,
    required this.secondCountryImage,
    required this.secondCountryName,
    required this.rightText,
    required this.firstValue,
    required this.secondValue,
  }) : super(key: key);

  @override
  _MatchDetailsPageState createState() => _MatchDetailsPageState();
}

class _MatchDetailsPageState extends State<MatchDetailsPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            height: 25.h,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 3.w),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/flags/alg.png',
                        width: 15
                            .sp, // Ajustez la taille de l'image selon vos besoins
                        height: 15.sp,
                      ),
                      SizedBox(width: 4.w), // Espace entre l'image et le texte
                      Expanded(
                        child: Text(
                          'Angleterre : premier league 2- Journee 9',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Action de l'icône
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container pour la première équipe
                    SizedBox(
                      width: 35.w,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4.w),
                          Column(
                            children: [
                              Image.asset(
                                widget.countryImage,
                                width: 15.w,
                                height: 15.w,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                widget.countryName,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '18.03.2023 15:30',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            Text(
                              widget.firstValue,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.pink,
                              ),
                            ),
                            const Text(
                              ' - ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.pink,
                              ),
                            ),
                            Text(
                              widget.secondValue,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          widget.rightText,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 4.w),
                    // Container pour la deuxième équipe
                    SizedBox(
                      width: 35.w,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                widget.secondCountryImage,
                                width: 15.w,
                                height: 15.w,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                widget.secondCountryName,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(width: 3.w),
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          // Scroll horizontal pour les boutons de contenu
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildContentButton("RESUME", 0),
                buildContentButton("STAT", 1),
                buildContentButton("COMPO", 2),
                buildContentButton("COTES", 3),
                buildContentButton("TAT", 4),
                buildContentButton("CLASSEMENT", 5),
              ],
            ),
          ),

          // Indicateurs rose
          Container(
            color: Colors.pink, // Couleur rose
            height: 0.5.h, // Hauteur de l'indicateur
            width: 4.w, // Largeur de l'indicateur
            margin: EdgeInsets.only(left: 4.w * selectedIndex), // Marge gauche
          ),

          Expanded(
            child: getContent(selectedIndex),
          ),
        ],
      ),
    );
  }

  Widget buildContentButton(String title, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          return selectedIndex == index ? Colors.pink : Colors.black;
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          return TextStyle(
            fontSize: 8.sp,
            fontWeight: FontWeight.bold,
          );
        }),
      ),
      child: Text(title),
    );
  }

  Widget getContent(int index) {
    switch (index) {
      case 0:
        return const ResumePage();
      case 1:
        return const StatPage();
      case 2:
        return const CompoPage();
      case 3:
        return const CotePage();
      case 4:
        return const TatPage();
      case 5:
        return const ClassementPage();
      default:
        return Container();
    }
  }
}
