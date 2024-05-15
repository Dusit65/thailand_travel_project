import 'package:dti_love_project/views/login_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 10),
        child: IntroductionScreen(
          scrollPhysics: BouncingScrollPhysics(),
          autoScrollDuration: 2000,
          pages: [
            //North
            PageViewModel(
              titleWidget: Text(
                "North",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/North.jpg"),
              bodyWidget: Text('White Temple'),
            ),
            //Middle
            PageViewModel(
              titleWidget: Text(
                "Middle",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/Middle.jpg"),
              bodyWidget: Text('Grand Palace'),
            ),
            //Northeast
            PageViewModel(
              titleWidget: Text(
                "Northeast",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/Northeast.jpg"),
              bodyWidget: Text('Phanom Rung Historical Park'),
            ),
            //South
            PageViewModel(
              titleWidget: Text(
                "South",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/South.jpg"),
              bodyWidget: Text('Promthep Cape'),
            ),
            //East
            PageViewModel(
              titleWidget: Text(
                "East",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/East.jpg"),
              bodyWidget: Text('Pattaya City'),
            ),
            //West
            PageViewModel(
              titleWidget: Text(
                "West",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/West.jpg"),
              bodyWidget: Text('Praya Nakorn Cave'),
            ),
          ],
          showSkipButton: true,
          skip: Text(
            "ข้าม",
            style: GoogleFonts.kanit(),
          ),
          onSkip: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginUI(),
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: Size(MediaQuery.of(context).size.width * 0.025,
                MediaQuery.of(context).size.width * 0.025),
            color: Colors.grey,
            activeSize: Size(MediaQuery.of(context).size.width * 0.025,
                MediaQuery.of(context).size.width * 0.025),
            activeColor: Colors.purple,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
          ),
          nextFlex: 0,
          done: Text(
            "เริ่มต้น",
            style: GoogleFonts.kanit(),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginUI(),
            ),
          ),
        ),
      ),
    );
  }
}
