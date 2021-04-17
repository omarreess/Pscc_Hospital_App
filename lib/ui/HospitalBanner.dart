import 'package:flutter/material.dart';
import 'package:newmed/main.dart';

Widget hospitalBanner(){
  return Container(width: double.infinity,
    height: 180,

    margin: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
    //color: Colors.black38,
    child: Card(
      elevation: 1,
      color: clrBack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right:8.0 , bottom:8.0 , top:8.0),
        child: Row(
          children: [
            ClipOval(clipBehavior:Clip.antiAliasWithSaveLayer ,child: CircleAvatar(radius: 60,backgroundColor: Colors.white,child: Image(image: AssetImage('assets/logotrans.png') ))),
            VerticalDivider(width: 5,color: Colors.transparent,),
            Container(
                width: 150,
                padding: EdgeInsets.only(top:15),
                child:

                Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top :0),
                      child: Text('$appNameEn\n',
                         textDirection:TextDirection.ltr ,

                        style:TextStyle(height: 1.1,
                            fontSize: 20,
                            color: Colors.black54,

                            fontWeight: FontWeight.w600) ,),
                    ),
                    Text('$appNameAr',
                      textDirection:TextDirection.rtl ,


                      style:TextStyle(height: 1.3,
                          fontSize: 18,
                          color: Colors.black54,

                          fontWeight: FontWeight.w600) ,),


                  ],
                )


            )
          ],),
      ),
    ),);
}