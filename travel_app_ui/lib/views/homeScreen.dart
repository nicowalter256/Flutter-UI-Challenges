import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.whiteBG,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu),
                SizedBox(
                  height: 30.h,
                  width: 30.w,
                  child: Image.network(Constants.defaultImage),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 100.h,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Alien!',
                    style: GoogleFonts.aclonica(),
                  ),
                  Text(
                    "Let's Explore The Big\nWorld Around Us",
                    style: GoogleFonts.abrilFatface(
                        textStyle: TextStyle(fontSize: 25.sp)),
                  )
                ],
              ),
            ),
            Container(
              height: 40.h,
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Constants.greyBG,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Row(
                  children: [
                    const Icon(Icons.search_sharp),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Search',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              child: Container(
                height: 180.h,
                width: size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blueGrey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
