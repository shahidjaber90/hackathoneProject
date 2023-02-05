import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathoneproject/screens/home_page.dart';
import 'package:hackathoneproject/utils/colors.dart';
import 'package:hackathoneproject/utils/fonts.dart';
import 'package:hackathoneproject/utils/images.dart';
import 'package:hackathoneproject/utils/texts.dart';
import 'package:hackathoneproject/widgets/button_widget.dart';
import 'package:hackathoneproject/widgets/textfield_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Image.asset(ImageConstant.backArrow),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24,left: 10),
                  child: Row(
                    children: [Image.asset(ImageConstant.groupBalls),
                    SizedBox(width: 20,),
                        Text(TextConstant.homeText.toUpperCase(),style: TextStyle(
                          color: ColorConstant.loginTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          fontFamily: FontsConstant.philosopher
                        ),),
                    ],
                  ),
                ),
                        Padding(
                          padding: const EdgeInsets.only(top:30,left: 10),
                          child: Row(
                            children: [
                              Text(TextConstant.signupText,style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                                fontFamily: FontsConstant.philosopher,
                                color: ColorConstant.greenText
                              ),),
                            ],
                          ),
                        )    ,             
                        Padding(
                          padding: const EdgeInsets.only(top:30,left: 10,right: 40),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            child: 
                                Text(TextConstant.loginSubTitleText,style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: FontsConstant.philosopher,
                                  color: ColorConstant.greenText,
                                ),),
                          ),
                        )    ,    
                        const SizedBox(height: 30,),
                        textFieldFunction(email, TextConstant.labelText, TextConstant.labelText,Icons.person_outline_sharp),
                        const SizedBox(height: 24,),
                        textFieldFunction(password, TextConstant.passwordText, TextConstant.passwordText,Icons.lock),
        
                        
        
                        SizedBox(height: 40,),
                        buttonFunction(TextConstant.signupbtnText, ColorConstant.greenText, context, const HomePage())
                                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}