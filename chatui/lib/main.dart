import 'package:chatui/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

//https://dribbble.com/shots/18413430-Ussage-Mobile-App-Design?utm_source=Clipboard_Shot&utm_campaign=milliarta&utm_content=Ussage%20Mobile%20App%20Design&utm_medium=Social_Share&utm_source=Clipboard_Shot&utm_campaign=milliarta&utm_content=Ussage%20Mobile%20App%20Design&utm_medium=Social_Share
