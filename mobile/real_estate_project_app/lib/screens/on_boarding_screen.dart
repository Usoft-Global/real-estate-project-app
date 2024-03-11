import 'package:flutter/material.dart';
import 'package:real_estate_project_app/widgets/on_boarding_widgets/on_boarding_page_one.dart';
import 'package:real_estate_project_app/widgets/on_boarding_widgets/on_boarding_page_three.dart';
import 'package:real_estate_project_app/widgets/on_boarding_widgets/on_boarding_page_two.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});
  final PageController _controller = PageController();

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: widget._controller,
            children: const [
              OnBoardingPageOne(),
              OnBoardingPageTwo(),
              OnBoardingPageThree(),
            ],
          )
        ],
      ),
    );
  }
}
