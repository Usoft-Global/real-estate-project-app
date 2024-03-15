import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomizableBoardingView extends StatelessWidget {
  const CustomizableBoardingView(
      {super.key,
      required this.shownString,
      required this.usedLottieURL,
      required this.backgroundColor});
  final String shownString;
  final String usedLottieURL;
  final Color backgroundColor;
  final textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              shownString,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: textColor),
              textAlign: TextAlign.center,
            ),
            Lottie.network(
              usedLottieURL,
            ),
          ],
        ),
      ),
    );
  }
}
