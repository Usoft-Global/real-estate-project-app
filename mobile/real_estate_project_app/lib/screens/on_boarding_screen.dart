import 'package:flutter/material.dart';
import 'package:real_estate_project_app/screens/home_screen.dart';
import 'package:real_estate_project_app/widgets/on_boarding_widgets/customizable_boarding_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  final int _pageChangeDurationMS = 1000;
  final Curve _curvesOfViews = Curves.easeIn;
  final int _pagePcs = 3;
  String nextButtonString = "Next";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            //Sayfa değişimi
            onPageChanged: (value) {
              setState(() {
                nextButtonString = value == 2 ? "Done" : "Next";
              });
              // value == 2
              //     ? setState(() {
              //         nextButtonString = "Done";
              //       })
              //     : setState(() {
              //         nextButtonString = "Next";
              //       });
            },
            children: const [
              //Ekranlarda geçiş yapılacak görüntüler
              CustomizableBoardingView(
                  shownString: "Birinci Sayfa",
                  usedLottieURL:
                      "https://lottie.host/b9d4ca4b-88c0-41f5-a177-31bdc7fdc343/3E8d95QVny.json",
                  backgroundColor: Colors.amber),
              CustomizableBoardingView(
                  shownString: "İkinci sayfa",
                  usedLottieURL:
                      "https://lottie.host/1e3d9ab1-91ea-46ed-a64e-963d73efcba1/7APmIwOplG.json",
                  backgroundColor: Colors.red),
              CustomizableBoardingView(
                  shownString: "Üçüncü Sayfa",
                  usedLottieURL:
                      "https://lottie.host/78932b2c-aff8-4b45-ae0d-c3e0d0f36254/svBj53qRXu.json",
                  backgroundColor: Colors.blue),
            ],
          ),
          //Indicator ve tuş kısımları

          Container(
            //Butonların Stack üstündeki konumu

            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    _controller.previousPage(
                        // Sayfa geçişleri süresi
                        duration: Duration(milliseconds: _pageChangeDurationMS),
                        // Sayfa geçişleri animasyon davranışı seçimi
                        curve: _curvesOfViews);
                  },
                  child: const Text("Back"),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: _pagePcs,
                  effect: const ScrollingDotsEffect(
                      activeDotScale: 2.5,
                      spacing: 15,
                      dotHeight: 12,
                      dotWidth: 3),
                ),
                InkWell(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: _pageChangeDurationMS),
                        curve: _curvesOfViews);
                    if (_controller.page == 2) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    }
                  },
                  child: Text(nextButtonString),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
