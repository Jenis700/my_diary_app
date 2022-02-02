import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';

class MealsCard extends StatelessWidget {
  const MealsCard({
    Key? key,
    required this.eatName,
    required this.eatFruitName,
    required this.eatKcal,
    required this.gColor1,
    required this.gColor2,
    required this.image,
  }) : super(key: key);

  final String eatName;
  final String eatFruitName;
  final String eatKcal;
  final Color gColor1;
  final Color gColor2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.37,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(70),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGreyColor.withOpacity(0.4),
                    offset: const Offset(2, 2),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    gColor1,
                    gColor2,
                  ],
                  stops: const [0.2, 1],
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: kDefaultPad, top: 40, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eatName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        eatFruitName,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            eatKcal,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "  kcal",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -8,
            left: 0,
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MealsCardWithAddButton extends StatelessWidget {
  const MealsCardWithAddButton({
    Key? key,
    required this.eatName,
    required this.eatFruitName,
    required this.gColor1,
    required this.gColor2,
    required this.iconColor,
    required this.image,
  }) : super(key: key);

  final String eatName;
  final String eatFruitName;
  final Color gColor1;
  final Color gColor2;
  final Color iconColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.37,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGreyColor.withOpacity(0.4),
                    offset: const Offset(2, 2),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    gColor1,
                    gColor2,
                  ],
                  stops: const [0.2, 1],
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: kDefaultPad, top: 40, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eatName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        eatFruitName,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: iconColor,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -8,
            left: 0,
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  image,
                  height: 45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
