import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/registration-page.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    var push = Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     './images/secondwel.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  // Widget _buildImage(String assetName, [double width = 350]) {
  //   return Image.asset('./images/first_welcome.png', width: width);
  // }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                )),
              ),
              Text(
                "to",
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                )),
              ),
              Text(
                "Groceryus",
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                )),
              ),
            ],
          ),
          // body:
          // "Groceryus",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '15000+ Grocery items available',
                style: GoogleFonts.caveat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              Text(
                'only for you',
                style: GoogleFonts.caveat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          image: Image.asset(
            './images/first_welcome.png',
            width: 365,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Text(
                "Fast Delivery",
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                )),
              ),
            ],
          ),
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Very fast same day delivery and',
                style: GoogleFonts.caveat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              Text(
                'custom delivery system ',
                style: GoogleFonts.caveat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          image: Image.asset(
            './images/10002.jpg',
            width: 365,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Text(
                "Fast Delivery",
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                )),
              ),
            ],
          ),
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Very fast same day delivery and',
                style: GoogleFonts.caveat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              Text(
                'custom delivery system ',
                style: GoogleFonts.caveat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          image: Image.asset(
            './images/10002.jpg',
            width: 365,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          color: Color(0xFFFF5324),
          child: const Text('Start',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black))),
      done: const Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),

      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: Color(0xFFFF5324),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
