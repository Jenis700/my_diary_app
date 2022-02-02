import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';

class CarbsProteinFat extends StatelessWidget {
  const CarbsProteinFat({
    Key? key,
    required this.text1,
    required this.text2,
    required this.gColor1,
    // required this.gColor2,
    required this.stopPoint1,
    required this.stopPoint2,
  }) : super(key: key);
  final String text1;
  final String text2;
  final Color gColor1;
  // final Color gColor2;
  final double stopPoint1;
  final double stopPoint2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
            color: kTextColor,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          height: 4,
          decoration: BoxDecoration(
            color: kBlueColor,
            gradient: LinearGradient(
              colors: [
                gColor1,
                gColor1.withOpacity(0.2),
              ],
              stops: [stopPoint1, stopPoint2],
            ),
          ),
          child: const SizedBox(
            width: 50,
            child: Divider(
              // color: kBlueColor,
              thickness: 2,
            ),
          ),
        ),
        Text(
          text2,
          style: TextStyle(color: kGreyColor),
        )
      ],
    );
  }
}
