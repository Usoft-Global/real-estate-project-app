import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomizableBoardingView extends StatelessWidget {
  const CustomizableBoardingView(
      {super.key,
      required this.shownString,
      required this.usedLottieURL,
      required this.backgroundColor});
  final String shownString;
  //= "Birinci sayfa burası";
  final String usedLottieURL;
  //=    "https://lottie.host/b9d4ca4b-88c0-41f5-a177-31bdc7fdc343/3E8d95QVny.json";
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.network(
              usedLottieURL,
            ),
            Text(shownString),
          ],
        ),
      ),
    );
  }
}
