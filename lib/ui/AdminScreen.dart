
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newmed/localization/generated/l10n.dart';


import 'ChooseAuth.dart';
import 'HomeScreen.dart';
 import '../main.dart';
import 'ServicesScreen.dart';

class AdminScreen extends StatefulWidget {


  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {

  @override
  Widget build(BuildContext context) {

     Size size = MediaQuery.of(context).size;

    Widget body(){
      return    homeScreens[_selectedIndex];
    }

    return Scaffold(
        bottomNavigationBar:btnNavGoole() ,
        extendBody: true        ,

      body:   Container(
      //  color: backroundLogoColour,
       // decoration: BoxDecoration(gradient: gradient),
        width: double.infinity,
        height: size.height,
        child:body()
      ),
    );
  }

  //Btn Nav Settings
   //Screens List
   List<Widget> homeScreens = [

     HomeScreen(),
     ServicesScreen(),
     ChooseAuthScreen()
  ];

  int _selectedIndex=0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;



        });
      }


  Widget btnNavGoole(){
    return  Container(
      //color: Colors.transparent,
       //margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(20.0),
             boxShadow: [
               
              BoxShadow( blurRadius: 20, color: Colors.black.withOpacity(.1))
            ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: GNav(

              gap: 12,
              activeColor: Colors.white,
              //activeColor: (_selectedIndex==0)?  Colors.pink:(_selectedIndex==1)?Colors.deepPurpleAccent:Colors.orangeAccent,
              iconSize: 24,

              //tabBackgroundGradient: gradient,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              //duration: Duration(milliseconds: 200),
              // tabBackgroundColor: Colors.grey[800],
              tabBackgroundColor: (_selectedIndex==0)?  Colors.lightGreen:(_selectedIndex==1)?clrBlueLight: Colors.redAccent ,
              tabs: [

                GButton(

                  icon: Icons.home_outlined,
                  iconColor:Colors.lightGreen ,
                  text: S.of(context)!.navHome,
                ),
                GButton(
                  icon: Icons.airline_seat_individual_suite_outlined,
                  iconColor:Colors.blueAccent ,
                  text: S.of(context)!.navServ,
                ),
                GButton(
                  icon: Icons.account_circle_outlined,
                  iconColor:Colors.redAccent ,
                  text: S.of(context)!.navProfile,
                ),

              ],
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTap ,
            ),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();


    }






  @override
  void didChangeDependencies() {
    context;
  }
}

//  google_nav_bar: ^4.0.2