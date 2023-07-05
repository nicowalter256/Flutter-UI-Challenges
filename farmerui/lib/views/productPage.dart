import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  color: Colors.white,
                  Icons.menu_outlined,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  Container(
                    constraints: const BoxConstraints(maxHeight: 150.0),
                    child: const Material(
                      color: Colors.blue,
                      child: TabBar(
                        tabs: [
                          Tab(
                            text: 'All',
                          ),
                          Tab(
                            text: 'Upcoming',
                          ),
                          Tab(
                            text: 'Trending',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Expanded(
                    child: TabBarView(
                      children: [
                        Home(),
                        Text('home'),
                        Text('home'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
