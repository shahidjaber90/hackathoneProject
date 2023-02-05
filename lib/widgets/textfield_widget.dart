import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathoneproject/utils/colors.dart';

textFieldFunction(_controller,labelText,label,iconVal){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,textAlign: TextAlign.left,style: TextStyle(
        color: ColorConstant.labelTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),),
      const SizedBox(height: 5,),
      TextField(
          controller: _controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4)
            ),
            prefixIcon: Icon(iconVal),
            labelText: labelText,
          ),
      ),
    ],
  );
}