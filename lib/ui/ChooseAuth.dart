


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newmed/localization/generated/l10n.dart';
import 'file:///E:/Dart/Filerole/newmedical/newmed/lib/ui/HospitalBanner.dart';

 import '../main.dart';

class ChooseAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar:  AppBar(title: Text('BSCC',style: TextStyle(fontSize: 18,color:Colors.black54),),centerTitle: true,backgroundColor: Colors.white,elevation: 0,),
      body: Container(
        width:double.infinity,

        color: Colors.white,

        child: Stack(


          //crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [


            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
               children: [
                 Divider(height: 45,color: Colors.transparent,),

                 Container(
                  margin: const EdgeInsets.only(left:17,right:17 , top : 0.0 ),
                  child: Text (S.of(context).chooseAuth ,
                    style: TextStyle(fontSize:33 ,height: 1.9, color: clrGreen.withOpacity(0.8),fontWeight: FontWeight.w600  ),),
                ),
                Divider(height:13,color: Colors.transparent,),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                          child: userTypeGrid(context,'assets/doctor.svg' , S.of(context).doctor)
                        ),
                          Expanded(
                            child: userTypeGrid(context,'assets/admin.svg' , S.of(context).admin)
                          ),
                      ],),
                      userTypeGrid(context,'assets/patient.svg' , S.of(context).patient)

                    ],
                  ),
                ),
              ],
            ),

            Align(alignment: Alignment.bottomCenter,child: Padding(
              padding: const EdgeInsets.only(bottom:40.0),
              child: hospitalBanner(),
            )),

          ],
        ),
      ),
    );
  }
}


Widget userTypeGrid(BuildContext ctx ,String img , String title)
{
  return Card(


    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ) ,
   // color: clrBack,
    // color:  (index==0)?Color(int.parse('#0041C4'.replaceAll('#', '0xff'))).withOpacity(0.9):(index==1)?Color(int.parse('#0041C4'.replaceAll('#', '0xff'))).withOpacity(0.4):(index==2)?clrBlueLight.withOpacity(1):(index==3)?clrBlueLight.withOpacity(0.7):(index==4)?clrBlueLight.withOpacity(0.5):clrBlueLight.withOpacity(0.2),
    elevation:1.5,
    child: FlatButton(

      onPressed: () { if(img=='assets/patient.svg'){
        Navigator.pushNamed(ctx, 'patient');
      }else{Navigator.pushNamed(ctx, 'login');} },
      child: GridTile(

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child:

                SvgPicture.asset(
                  img
                  ,height: 60,width: 50,
                ),

              ),
              Divider(height: 2.2,color: Colors.transparent,),
              Text(title ,
                style: TextStyle(fontSize: 25 ,height: 1.5, color: Colors.black54,fontWeight: FontWeight.w500),),
            ],
          ),

        ),
      ),

    ),);
}