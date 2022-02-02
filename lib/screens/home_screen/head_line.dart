import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.press,
  }) : super(key: key);

  final String text;
  final String buttonText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPad * 1.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: kTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: press,
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlueColor,
                    letterSpacing: 0.4,
                  ),
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward)
            ],
          )
        ],
      ),
    );
  }
}
