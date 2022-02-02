import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';
import 'package:my_diary_app/screens/home_screen/diet_container/carbs_protein_and_fat.dart';
import 'package:my_diary_app/screens/home_screen/diet_container/eaten_and_burned.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class DietContainerDetails extends StatefulWidget {
  DietContainerDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<DietContainerDetails> createState() => _DietContainerDetailsState();
}

class _DietContainerDetailsState extends State<DietContainerDetails> {
  double defaultValue = 1503;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kGreyColor.withOpacity(0.3),
            offset: const Offset(2, 2),
            blurRadius: 30,
            spreadRadius: 2,
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(80),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //! for eaten and burned
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EatenBurned(
                    text: "Eaten",
                    colors: kBlueColor,
                    number: "1127",
                  ),
                  SizedBox(height: kDefaultPad * 2),
                  EatenBurned(
                    text: "Burned",
                    colors: kPinkColor.withOpacity(0.7),
                    number: "102",
                  ),
                ],
              ),

              //! sleek circuler slider
              SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  angleRange: 350,
                  size: 120,
                  customColors: CustomSliderColors(
                    gradientStartAngle: 100,
                    gradientEndAngle: 3000,
                    dynamicGradient: true,
                    shadowMaxOpacity: 0.2,
                    progressBarColors: [
                      kBlueColor,
                      kBlueColor,
                      kBlueColor,
                      kPinkColor.withOpacity(0.9),
                    ],
                    dotColor: Colors.white,
                    progressBarColor: kBlueColor,
                    shadowColor: kBlueColor,
                    shadowStep: 5,
                    trackColor: kBlueColor.withOpacity(0.5),
                  ),
                  customWidths: CustomSliderWidths(
                    progressBarWidth: 10,
                    shadowWidth: 10,
                    handlerSize: 3,
                  ),
                ),
                initialValue: defaultValue,
                innerWidget: (percentage) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(
                          "${percentage.round()}",
                          style: TextStyle(
                            color: kBlueColor,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "kcal left",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
                onChange: (value) {
                  setState(() {
                    value = defaultValue;
                  });
                },
                min: 100,
                max: 3000,
              ),
            ],
          ),
          Divider(
            indent: 30,
            endIndent: 15,
            color: kGreyColor,
          ),
          //! carbs, protein & fat vali row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarbsProteinFat(
                text1: "Carbs",
                text2: "12g left",
                gColor1: kBlueColor,
                stopPoint1: 0.6,
                stopPoint2: 0.9,
              ),
              CarbsProteinFat(
                text1: "Protein",
                text2: "30g left",
                gColor1: kPinkColor,
                stopPoint1: 0.4,
                stopPoint2: 0.7,
              ),
              CarbsProteinFat(
                text1: "Fat",
                text2: "10g left",
                gColor1: kYellowColor,
                stopPoint1: 0.3,
                stopPoint2: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
