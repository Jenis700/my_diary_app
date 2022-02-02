import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';

class EatenBurned extends StatelessWidget {
  const EatenBurned({
    Key? key,
    required this.text,
    required this.number,
    required this.colors,
  }) : super(key: key);
  final String text;
  final String number;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //vertical divider
        SizedBox(
          height: 50,
          child: VerticalDivider(
            color: colors,
            thickness: 2,
          ),
        ),
        SizedBox(width: kDefaultPad / 2),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: kGreyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: kDefaultPad / 2),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: colors,
                ),
                SizedBox(width: kDefaultPad / 2),
                Text(
                  number,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "  kcal",
                  style: TextStyle(color: kGreyColor),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
