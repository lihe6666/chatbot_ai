import 'package:chatbot_ai/home.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ),
        subTitleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
        imageUrl: 'assets/images/01.png',
        title: 'Introduction to Chatbot_AI',
        subTitle:
            'Meet Chatbot, your personal AI language model & discover the benefits of using Chatbot_AI for language tasks'),
    Introduction(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ),
        subTitleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
        imageUrl: 'assets/images/02.png',
        title: 'Explore categories of all topics',
        subTitle:
            'Ask question to chatbot_AI with help of different categories and get answer that you want.'),
    Introduction(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ),
        subTitleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
        imageUrl: 'assets/images/03.png',
        title: 'Getting started with chatbot_AI',
        subTitle: 'Try out different language tasks and modes. '),
  ];

  Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      backgroudColor: const Color(0xFF02969F),
      foregroundColor: const Color(0xFFFFFFFF),
      onTapSkipButton: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      ),
      skipTextStyle: const TextStyle(
          color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
    );
  }
}
