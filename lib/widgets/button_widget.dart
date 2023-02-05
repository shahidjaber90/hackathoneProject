import 'package:flutter/material.dart';
import 'package:hackathoneproject/utils/colors.dart';

buttonFunction(
  text,
  color,
  context,
  navigate,
) {
  return Container(
    height: 48,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20)
    ),
    width: MediaQuery.of(context).size.width * 0.90,
    child: ElevatedButton(onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> navigate));
    }, 
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.greenText,
      shape: StadiumBorder(),
    ),
    child: Text(text,style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),)),
  );
}
