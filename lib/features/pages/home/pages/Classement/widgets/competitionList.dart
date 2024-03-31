import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Direct/widgets/match_details.dart';

class Competition {
  final String country;
  final String league;
  final String flagImage;

  Competition(this.country, this.league, this.flagImage);
}

class CompetitionListe extends StatelessWidget {
  final List<Competition> competitions;

  const CompetitionListe({Key? key, required this.competitions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: competitions.map((competition) {
        return InkWell(
          onTap: () {
            // Action à effectuer lors du clic sur un élément de la liste
          },
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(competition.flagImage),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        competition.country,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        competition.league,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 8.w), // Ajustez la valeur selon vos besoins
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
