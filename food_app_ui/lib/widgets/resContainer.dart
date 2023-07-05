import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_ui/constants/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableContainer extends StatelessWidget {
  final IconData faIcon;
  final String type;
  final Color? color;
  const ReusableContainer(
      {super.key, required this.faIcon, required this.type, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Constants.blackBG,
      height: 80.h,
      width: 119.6.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              faIcon,
              color: Constants.whiteBG,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              type.toUpperCase(),
              style: GoogleFonts.montserrat(color: Constants.greyColor),
            )
          ],
        ),
      ),
    );
  }
}
