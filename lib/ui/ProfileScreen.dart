import 'package:flutter/material.dart';
import 'package:newmed/main.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: clrGreenLight,


      body: Directionality(
        textDirection: TextDirection.ltr,
        child: SafeArea(
          child: Stack(children: [
            Container(
              margin:EdgeInsets.only(left : 6 ,top:40  ) ,
              child: IconButton(
                iconSize:28 ,
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios_outlined)
                ,onPressed: () {            Navigator.pop(context);
              },
              ),
            ),
            Container(

             //   color: Colors.white,

                margin: EdgeInsets.only(top: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight:Radius.circular(25.5),
                      topLeft:Radius.circular(25.5)),
                  color: Colors.white,),

              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Divider(height: 65, color: Colors.transparent,) ,
                    Text('Account Info',style: TextStyle(fontSize: 35 ,height: 1,color:Colors.black54),),
                    Divider(height: 20, color: Colors.transparent,) ,

                    headText('Employee Name'),
                      Divider(height: 4.2, color: Colors.transparent,) ,
                      circleInput('YASER IRAHIM SALEH AL KENANI'),
                      Divider(height: 10, color: Colors.transparent,) ,

                       headText('Mail'),
                      Divider(height: 4.2, color: Colors.transparent,) ,
                      circleInput('yalkenani@pscc.med.sa',mr:80),
                      Divider(height:10, color: Colors.transparent,) ,


                       headText('Manager'),
                      Divider(height: 4.2, color: Colors.transparent,) ,
                      circleInput('YAHYA SHELYAN AL HEBAISHI'),
                      Divider(height: 10, color: Colors.transparent,) ,



                       headText('Position'),
                      Divider(height: 4.2, color: Colors.transparent,) ,
                      circleInput('DIRECTOR OF COMMUNICATION AND INFORMATION TECHNOLOY' ,h: 60),
                       Divider(height: 10, color: Colors.transparent,) ,


                      headText('Staff ID'),
                      Divider(height: 4.2, color: Colors.transparent,) ,
                      circleInput('9152430',mr:186),

                   ],),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //color:Colors.purpleAccent ,


                   margin: EdgeInsets.only(top: 90),
                  height: 120,
                  width: 120,
                  child:ClipRRect(borderRadius: BorderRadius.circular(17),
                    child: Image.network
                      ("https://dneegypt.nyc3.digitaloceanspaces.com/2020/10/127887cf-9b92-4026-bdfa-6960785cb209-768x430.jpg" ,
                      fit: BoxFit.fitHeight,
                      // height: double.infinity,
                      // width: double.infinity,
                      //  height: double.infinity,
                    ),
                  ),
                ),
              ],
            )

           ],),
        ),
      ),
    );
  }
}
Widget headText(String head)
{
  return Text( head,style: TextStyle(color: Colors.black,fontSize: 14.5,fontWeight: FontWeight.w600),);
}
Widget circleInput(String input ,{ double h=46 , double w=double.infinity , double mr = 25}){
  return Container(
    margin: EdgeInsets.only(left: 0,right: mr),
     padding: EdgeInsets.only(left: 15,right: 10),
    width: w,
    height: h,
    child: Align(
        alignment:Alignment.centerLeft,

        child: Text(input,style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.w500,height: 1,color:Colors.black54),)),
    decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.black38,
          width: 0.5,
        ),
        color: Colors.transparent
    ),);
}
