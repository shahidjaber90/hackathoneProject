import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathoneproject/screens/login_screen.dart';
import 'package:hackathoneproject/screens/signup_page.dart';
import 'package:hackathoneproject/utils/colors.dart';
import 'package:hackathoneproject/utils/fonts.dart';
import 'package:hackathoneproject/utils/images.dart';
import 'package:hackathoneproject/utils/texts.dart';
import 'package:hackathoneproject/widgets/button_widget.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Container(
        height: MediaQuery.of(context).size.height * 1.00,
        width: MediaQuery.of(context).size.width * 1.00,
        child: Column(
          children: [
            Container(
              height: 496,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 496,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.splashImage))),
                  ),
                  Container(
                    height: 496,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.splashLine))),
                  ),
                  Container(
                    height: 420,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.groupBall))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 420,
                    width: double.infinity,
                    child: Text(
                      TextConstant.homeText.toUpperCase(),
                      style: TextStyle(
                          color: ColorConstant.bgColor,
                          letterSpacing: 6,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontsConstant.philosopher),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextConstant.getReadyText,
                  style: TextStyle(
                      color: ColorConstant.greenText,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontsConstant.philosopher),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextConstant.getReadySubTitleText,
                  style: TextStyle(
                      color: ColorConstant.greenText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontsConstant.philosopher),
                ),
              ),
            ),
           
           Padding(padding: EdgeInsets.only(top: 40),
           child:  buttonFunction(TextConstant.splashButtonText, ColorConstant.greenText, context, const LoginPage()),
           )
          ],
        ),
      ),
    );
  }
}
