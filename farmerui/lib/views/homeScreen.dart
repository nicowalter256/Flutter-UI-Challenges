import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 250.h,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 10.h,
                right: 0,
                left: 32.w,
                child: Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30.w,
                bottom: 65.h,
                child: Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    '-',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Positioned(
                right: 30.w,
                bottom: 15.h,
                child: Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30.w,
                bottom: 45.h,
                child: Text(
                  '1 kg',
                  style: TextStyle(color: Colors.white, fontSize: 10.sp),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, bottom: 5.h),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Fresh Cabbage',
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, bottom: 35.h),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 10.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                const Text(
                  '4.5',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.w,
                ),
                const Text('(245 reviews)')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 100.w,
                  color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      const Text(
                        'Call',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 100.w,
                  color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.message_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      const Text(
                        'Chat',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 10.h, right: 30.w),
                  child: const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                ),
                Positioned(
                  right: 30.w,
                  bottom: 15.h,
                  child: Container(
                    height: 40.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.sp),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 30.w,
                    bottom: 15.h,
                    child: Row(
                      children: [
                        Text(
                          '1000 ',
                          style:
                              TextStyle(color: Colors.green, fontSize: 25.sp),
                        ),
                        Text(
                          'Ugx',
                          style:
                              TextStyle(color: Colors.black, fontSize: 15.sp),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
