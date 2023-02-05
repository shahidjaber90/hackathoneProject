import 'package:flutter/material.dart';
import 'package:hackathoneproject/utils/fonts.dart';

cardWidget(title, subTitle, pugImage, price, isFavorite, addCart, product,
    lines, color) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      height: 177,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color,
      ),
      child: Stack(
        children: [
          Container(
            child: Image.asset(lines),
          ),
          Container(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 30),
                child: Row(
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: FontsConstant.poppins,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(pugImage)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 6),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontsConstant.philosopher,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 24),
                  child: Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontsConstant.poppins),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite)),
                      const SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        child: Image.asset(addCart),
                      ),
                    ],
                  ),
                ),
              ),
               
              
             
            ],
          ),
          
          ),
          Positioned(
            child: Container(
              alignment: Alignment.centerRight,
                child: Image.asset(product,),
              ))
        ],
      ),
    ),
  );
}

// {
//     'title':'Peperomia',
//     'subTitle': 'Air Purifier',
//     'pugImage': 'assets/Group66.png',
//     'price': '\$400',
//     'isFavorite': false,
//     'addCart': 'assets/Group61.png',
//     'product': 'assets/PeperomiaObtusfolia.png',
//     "color": const Color(0xff9CE5CB),
//   },