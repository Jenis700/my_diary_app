import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';
import 'package:my_diary_app/screens/home_screen/bottom_nav_bar.dart';
import 'package:my_diary_app/screens/home_screen/diet_container/diet_detail_show_container.dart';
import 'package:my_diary_app/screens/home_screen/head_line.dart';
import 'package:my_diary_app/screens/home_screen/meals_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Container(
        color: kPrimeColor,
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              children: [
                SizedBox(height: kDefaultPad),
                HeadLine(
                  text: "Mediterranean diet",
                  buttonText: "Details",
                  press: () {},
                ),

                //! diet container
                DietContainerDetails(),

                SizedBox(height: kDefaultPad),
                HeadLine(
                  text: "Meals today",
                  buttonText: "Customize",
                  press: () {},
                ),
                //! meals today vali row
                mealsTodayRow(),
                HeadLine(
                  text: "Body measurement",
                  buttonText: "Today",
                  press: () {},
                ),
                //! Body measurement vali row
                bodyMeasurement(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff5472d3),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }

//! meals today vali row
  SizedBox mealsTodayRow() {
    return SizedBox(
      height: 220,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:
              EdgeInsets.only(left: kDefaultPad * 2, right: kDefaultPad / 1.7),
          child: Row(
            children: [
              const MealsCard(
                eatName: "Breakfast",
                eatFruitName: "Bread,\nPoonut butter,\nApple",
                eatKcal: "525",
                gColor1: Color(0xffffa270),
                gColor2: Color(0xffffccbc),
                image: "assets/meals (3).png",
              ),
              MealsCard(
                eatName: "Lunch",
                eatFruitName: "Sallrscon,\nMixxed Veggies,\nAnocods",
                eatKcal: "602",
                gColor1: const Color(0xff6f74dd).withOpacity(0.9),
                gColor2: const Color(0xff5472d3),
                image: "assets/meals (2).png",
              ),
              MealsCardWithAddButton(
                eatName: "Snack",
                eatFruitName: "Bread,\nPoonut butter",
                gColor1: const Color(0xffff77a9).withOpacity(0.8),
                gColor2: const Color(0xffb4004e),
                iconColor: Color(0xffb4004e),
                image: "assets/meals (1).png",
              ),
            ],
          ),
        ),
      ),
    );
  }

//! body measurement vali row
  SizedBox bodyMeasurement() {
    return SizedBox(
      height: 220,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:
              EdgeInsets.only(left: kDefaultPad * 2, right: kDefaultPad / 1.7),
          child: Row(
            children: [
              const MealsCard(
                eatName: "Breakfast",
                eatFruitName: "Bread,\nPoonut butter,\nApple",
                eatKcal: "525",
                gColor1: Color(0xffff77a9),
                gColor2: Color(0xffb4004e),
                image: "assets/meals (3).png",
              ),
              MealsCard(
                eatName: "Lunch",
                eatFruitName: "Sallrscon,\nMixxed Veggies,\nAnocods",
                eatKcal: "602",
                gColor1: const Color(0xff4c8c4a),
                gColor2: const Color(0xff1b5e20),
                image: "assets/meals (2).png",
              ),
              MealsCardWithAddButton(
                eatName: "Snack",
                eatFruitName: "Bread,\nPoonut butter",
                gColor1: const Color(0xff37474f),
                gColor2: const Color(0xff62727b).withOpacity(0.8),
                iconColor: Color(0xff37474f),
                image: "assets/meals (1).png",
              ),
            ],
          ),
        ),
      ),
    );
  }

//! app bar
  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "My Diary",
        style: TextStyle(
          color: kTextColor,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        SizedBox(
          width: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: kTextColor.withOpacity(0.65),
              ),
              Icon(
                Icons.calendar_today_outlined,
                size: 20,
                color: kTextColor.withOpacity(0.65),
              ),
              Text(
                "15 May",
                style: TextStyle(
                  color: kTextColor.withOpacity(0.65),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: kTextColor.withOpacity(0.65),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
