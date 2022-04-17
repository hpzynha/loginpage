import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/constants.dart';
import 'package:login/screen/home/widgets/slider_dot.dart';
import 'package:login/screen/login/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(child: SvgPicture.asset('assets/images/two.svg')),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Image.asset(
                'assets/images/homepicture.png',
                height: 250,
                width: 250,
              ),
            )
          ]),
          Text(
            'Translate & Earn.',
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Text(
            'Now it is easy to earn money, just use the\n           translator and collect the point',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: mPrimaryTextColor),
          ),
          const SliderDot(),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(mPrimaryColor)),
            onPressed: () {},
            child: Text(
              'GET STARTED',
              style: GoogleFonts.poppins(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text('Login',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: mPrimaryColor))),
            ],
          )
        ],
      ),
    );
  }
}
