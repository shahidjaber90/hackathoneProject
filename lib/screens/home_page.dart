import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hackathoneproject/screens/splashscreen_page.dart';
import 'package:hackathoneproject/utils/colors.dart';
import 'package:hackathoneproject/utils/data_list.dart';
import 'package:hackathoneproject/utils/fonts.dart';
import 'package:hackathoneproject/utils/images.dart';
import 'package:hackathoneproject/utils/texts.dart';
import 'package:hackathoneproject/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TextEditingController search = TextEditingController();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageConstant.groupBalls),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    TextConstant.homeText,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontsConstant.philosopher,
                        color: ColorConstant.loginTextColor,
                        letterSpacing: 2),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(ImageConstant.notification),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset(ImageConstant.menu),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
        
              Container(
                height: 196,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 196,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.cardImage)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextConstant.plantText,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: FontsConstant.philosopher,
                                  color: ColorConstant.labelTextColor),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              TextConstant.of40,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontsConstant.poppins,
                                  color: ColorConstant.labelTextColor),
                            ),
                            Padding(padding:const  EdgeInsets.only(left: 16),
                            child: Image.asset(ImageConstant.greenIndicator),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        
              // field
              SizedBox(
                height: 20,
              ),
        
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 50,
                    child: TextField(
                      controller: search,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14)),
                        prefixIcon: const Icon(Icons.search),
                        suffix: Image.asset(ImageConstant.scan),
                        labelText: TextConstant.searchText,
                        labelStyle: TextStyle(
                            fontFamily: FontsConstant.poppins,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstant.labelTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset(ImageConstant.cartImage)
                ],
              ),
        
              // tabs
        
              Container(
                width: MediaQuery.of(context).size.width * 1.00,
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: TabBar(
                      controller: _tabController,
                      indicatorWeight: 2.00,
                      unselectedLabelColor: ColorConstant.labelTextColor,
                      labelColor: ColorConstant.greenText,
                      indicatorColor: ColorConstant.greenText,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 12),
                      labelPadding: const EdgeInsets.only(right: 10),
                      tabs: [
                        Tab(
                          text: TextConstant.toppick,
                        ),
                        Tab(
                          text: TextConstant.indoor,
                        ),
                        Tab(
                          text: TextConstant.outdoor,
                        ),
                        Tab(
                          text: TextConstant.seeds,
                        ),
                        Tab(
                          text: TextConstant.planters,
                        ),
                      ]),
                ),
              ),
        
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.34,
                      child: TabBarView(controller: _tabController, children: [
                        // card 3 start
              
                        // card 3 end
                        Container(
                          height: 600,
                          child: ListView.builder(
                            itemCount: cardItem.length,
                            itemBuilder: ((context, index) {
                              return cardWidget(cardItem[index]['title'], cardItem[index]['subTitle'], 
                              cardItem[index]['pugImage'], cardItem[index]['price'],
                               cardItem[index]['isFavorite'], cardItem[index]['addCart'],
                                cardItem[index]['product'], cardItem[index]['lines'], cardItem[index]['color']);
                            }),
                        ),),
        
                        // Extra Tabs Information
                        Center(
                            child: Text(
                          TextConstant.indoor,
                          textAlign: TextAlign.center,
                        )),
                        Center(
                            child: Text(
                          TextConstant.outdoor,
                          textAlign: TextAlign.center,
                        )),
                        Center(
                            child: Text(
                          TextConstant.seeds,
                          textAlign: TextAlign.center,
                        )),
                        Center(
                            child: Text(
                          TextConstant.planters,
                          textAlign: TextAlign.center,
                        )),
                      ]),
                    ),
                  ],
                ),
              ),
        
              // tabs end
        
                GNav(tabs: [
                    GButton(
                onPressed: () {                
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreenPage()));
                },
                      icon: Icons.home_outlined,
                      iconColor: ColorConstant.labelTextColor,
                      style: GnavStyle.oldSchool,
                      iconActiveColor: ColorConstant.labelTextColor,
                      text: '   Home',
                      textColor: ColorConstant.labelTextColor,
                      // backgroundColor: ColorConstant.greenText,
                      iconSize: 24,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans'),
                    ),
                    GButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SplashScreenPage()));
                      },
                      icon: Icons.favorite_border,
                      iconColor: ColorConstant.labelTextColor,
                      style: GnavStyle.oldSchool,
                      iconActiveColor: ColorConstant.labelTextColor,
                      text: '   Favorite',
                      textColor: ColorConstant.labelTextColor,
                      backgroundColor: ColorConstant.labelTextColor,
                      iconSize: 24,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans'),
                    ),
                    GButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreenPage()));
                },
                      icon: Icons.store,
                      iconColor: ColorConstant.labelTextColor,
                      style: GnavStyle.oldSchool,
                      iconActiveColor: ColorConstant.labelTextColor,
                      text: '   Order',
                      textColor: ColorConstant.labelTextColor,
                      backgroundColor: ColorConstant.labelTextColor,
                      iconSize: 24,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans'),
                    ),
                    GButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreenPage()));
                },
                      icon: Icons.person_outline_outlined,
                      iconColor: ColorConstant.labelTextColor,
                      style: GnavStyle.oldSchool,
                      iconActiveColor: ColorConstant.labelTextColor,
                      text: '   User',
                      textColor: ColorConstant.labelTextColor,
                      backgroundColor: ColorConstant.labelTextColor,
                      iconSize: 24,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans'),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    ));
  }
}
