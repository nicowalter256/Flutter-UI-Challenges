import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app_ui/constants/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_ui/widgets/resContainer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.blackBG,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height / 2.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(Constants.homeImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 40.h,
                right: 25.w,
                child: Container(
                  height: 40.h,
                  width: 40.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.whiteBG,
                  ),
                  child: const Center(
                    child: FaIcon(FontAwesomeIcons.locationArrow),
                  ),
                ),
              ),
              Positioned(
                bottom: 20.h,
                left: 25.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to'.toUpperCase(),
                      style: GoogleFonts.aldrich(
                        textStyle: TextStyle(
                            color: Constants.whiteBG,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Tokyo,'.toUpperCase(),
                          style: GoogleFonts.aldrich(
                            textStyle: TextStyle(
                                color: Constants.pinkBG,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          ' Japan'.toUpperCase(),
                          style: GoogleFonts.aldrich(
                            textStyle: TextStyle(
                                color: Constants.whiteBG, fontSize: 40.sp),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Container(
              height: 40.h,
              width: size.width,
              decoration: BoxDecoration(
                color: Constants.greyBG,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.sp),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.search,
                      color: Constants.whiteBG,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Lets explore some food here...',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Constants.whiteBG, fontSize: 12.sp),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 241.h,
            color: Constants.greyBG,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.burger,
                      type: 'burger',
                    ),
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.bowlFood,
                      type: 'Tea',
                    ),
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.beerMugEmpty,
                      type: 'Beer',
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.cakeCandles,
                      type: 'cake',
                    ),
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.coffee,
                      type: 'coffee',
                    ),
                    ReusableContainer(
                      color: Constants.pinkBG,
                      faIcon: Icons.local_drink,
                      type: 'drink',
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.iceCream,
                      type: 'ice',
                    ),
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.fish,
                      type: 'fish',
                    ),
                    ReusableContainer(
                      faIcon: FontAwesomeIcons.dochub,
                      type: 'Donut',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
