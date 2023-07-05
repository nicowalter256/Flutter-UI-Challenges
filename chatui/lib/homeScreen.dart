import 'package:chatui/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.arrow_back),
                Stack(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://image.lexica.art/full_jpg/7515495b-982d-44d2-9931-5a8bbbf27532"),
                          )),
                    ),
                    Positioned(
                      bottom: 2.0,
                      right: 2.0,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sebastian Rudiger',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                const Icon(
                  Icons.video_call,
                  color: Colors.grey,
                ),
                const Icon(
                  Icons.call,
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
