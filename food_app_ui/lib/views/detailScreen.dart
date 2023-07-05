import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app_ui/constants/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _index = 0;
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2016/04/28/22/47/steak-1359897_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/03/17/21/09/steak-2152698_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/06/10/01/31/grill-804299_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height / 2.9,
              ),
              Positioned(
                top: 50.h,
                left: 25.w,
                child: const Icon(Icons.arrow_back),
              ),
              Positioned(
                top: 80.h,
                left: 25.w,
                child: Text(
                  'Fantastic\nbeef steak'.toUpperCase(),
                  style: GoogleFonts.alexandria(
                    textStyle:
                        TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                left: 25.w,
                bottom: 2.h,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(Constants.profile1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50.w,
                bottom: 2.h,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(Constants.profile2),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 75.w,
                bottom: 2.h,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(Constants.profile3),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 10.h,
                  left: 120.w,
                  child: Text(
                    '12,908 people people like this',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Constants.greyBG)),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: SizedBox(
              height: 220.h,
              width: size.width,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 12,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: imageList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Theme(
                data: ThemeData(
                  canvasColor: Colors.yellow,
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                        primary: Colors.green,
                        background: Colors.red,
                        secondary: Colors.green,
                      ),
                ),
                child: Stepper(
                  controlsBuilder: (context, controller) {
                    return const SizedBox.shrink();
                  },
                  currentStep: _index,
                  onStepCancel: () {
                    if (_index > 0) {
                      setState(() {
                        _index -= 1;
                      });
                    }
                  },
                  onStepContinue: () {
                    if (_index <= 0) {
                      setState(() {
                        _index += 1;
                      });
                    }
                  },
                  onStepTapped: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  steps: <Step>[
                    Step(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ABOUT',
                            style: GoogleFonts.montserrat(
                                color: Constants.blackBG,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style:
                              GoogleFonts.montserrat(color: Constants.greyBG),
                        ),
                      ),
                    ),
                    Step(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'OPEN HOURS',
                            style: GoogleFonts.montserrat(
                                color: Constants.blackBG,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Everyday 10am - 10pm',
                          style:
                              GoogleFonts.montserrat(color: Constants.greyBG),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
