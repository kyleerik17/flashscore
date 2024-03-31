import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CotePage extends StatefulWidget {
  const CotePage({Key? key}) : super(key: key);

  @override
  _CotePageState createState() => _CotePageState();
}

class _CotePageState extends State<CotePage> {
  int selectedIndex = -1;
  int specialSelectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Boutons principaux
        Container(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 2.0.w),
              _buildButton(0, '1x2'),
              SizedBox(width: 2.0.w),
              _buildButton(1, '+/-'),
              SizedBox(width: 2.0.w),
              _buildButton(2, 'AH'),
              SizedBox(width: 2.0.w),
              _buildButton(3, 'CD'),
              SizedBox(width: 2.0.w),
              _buildButton(4, 'MT/TR'),
              SizedBox(width: 2.0.w),
              _buildButton(5, 'LPM'),
            ],
          ),
        ),
        SizedBox(height: 2.0.h), // Ajouter un espacement vertical
        // Boutons spéciaux
        Container(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
            color: Colors.grey[300],
            child: Row(
              children: [
                _buildSpecialButton(0, 'TEMPS REGULIER',
                    isWhiteBg: specialSelectedIndex == 0),
                SizedBox(width: 1.w),
                _buildSpecialButton(1, '1.MI-TEMPS',
                    isWhiteBg: specialSelectedIndex == 1),
                SizedBox(width: 1.w),
                _buildSpecialButton(2, '2.MI-TEMPS',
                    isWhiteBg: specialSelectedIndex == 2),
                SizedBox(width: 1.w),
              ],
            )),
        SizedBox(height: 2.0.h),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 2.w),
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 18.h),
              const Text('1'),
              SizedBox(width: 17.w),
              const Text('X'),
              SizedBox(width: 17.w),
              const Text('2'),
            ],
          ),
        ),
        SizedBox(height: 0.5.h),
        Row(
          children: [
            Row(
              children: [
                SizedBox(width: 2.w),
                Image.asset('assets/images/1bet.jpg', height: 6.h),
              ],
            ),
            SizedBox(width: 21.w), // Espacement entre l'image et les textes
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Ajoutez du padding comme vous le souhaitez

                    child: const Row(
                      children: [
                        Icon(Icons.arrow_upward,
                            color: Colors.green), // Icône avant le texte
                        SizedBox(
                            width: 0.5), // Espacement entre l'icône et le texte
                        Text('2.43'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Ajoutez du padding comme vous le souhaitez

                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.green,
                        ), // Icône avant le texte
                        SizedBox(
                            width: 0.5), // Espacement entre l'icône et le texte
                        Text('1.43'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Ajoutez du padding comme vous le souhaitez

                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.red,
                        ), // Icône avant le texte
                        SizedBox(
                            width: 0.5), // Espacement entre l'icône et le texte
                        Text('1.21'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 0.5.h),
        Row(
          children: [
            Row(
              children: [
                SizedBox(width: 2.w),
                Image.asset('assets/images/betc.png', height: 3.h),
              ],
            ),
            SizedBox(width: 21.w), // Espacement entre l'image et les textes
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Ajoutez du padding comme vous le souhaitez

                    child: const Row(
                      children: [
                        Icon(Icons.arrow_upward,
                            color: Colors.green), // Icône avant le texte
                        SizedBox(
                            width: 0.5), // Espacement entre l'icône et le texte
                        Text('2.43'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Ajoutez du padding comme vous le souhaitez

                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.green,
                        ), // Icône avant le texte
                        SizedBox(
                            width: 0.5), // Espacement entre l'icône et le texte
                        Text('1.43'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Ajoutez du padding comme vous le souhaitez

                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.red,
                        ), // Icône avant le texte
                        SizedBox(
                            width: 0.5), // Espacement entre l'icône et le texte
                        Text('1.21'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(int index, String text) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (selectedIndex == index) {
            selectedIndex = 1;
            specialSelectedIndex =
                1; // Effacer la sélection spéciale lors de la désélection
          } else {
            selectedIndex = index;
            specialSelectedIndex =
                1; // Effacer la sélection spéciale lors de la sélection du bouton principal
          }
        });
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0.h),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed) ||
                selectedIndex == index) {
              return Colors
                  .pink; // Couleur rose lorsqu'elle est pressée ou sélectionnée
            }
            return Colors.grey[300]!; // Couleur grise par défaut
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(0.w, 4.0.h),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selectedIndex == index ? Colors.black : Colors.black87,
        ),
      ),
    );
  }

  Widget _buildSpecialButton(int index, String text, {bool isWhiteBg = false}) {
    return Container(
      height: 4.h,
      decoration: isWhiteBg
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.h),
            )
          : null,
      child: TextButton(
        onPressed: () {
          setState(() {
            specialSelectedIndex = index;
            selectedIndex = -1;
          });
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 9.sp),
        ),
      ),
    );
  }
}
