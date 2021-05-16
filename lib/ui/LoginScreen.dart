

import 'package:flutter/material.dart';
import 'package:newmed/localization/generated/l10n.dart';
import 'package:newmed/main.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,

      appBar:  AppBar(title: Text('BSCC',style: TextStyle(fontSize: 18,color:Colors.black54),),centerTitle: true,backgroundColor: Colors.transparent,elevation: 0,),

      body: SafeArea(
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(

             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(height: 7 , color: Colors.transparent,),

              Center(child: Image(image: AssetImage('assets/login.png') ,width: 260,height: 220,)),
                Divider(height: 28 , color: Colors.transparent,),
             Container(padding: EdgeInsets.symmetric(horizontal: 22), child: Text(S.of(context)!.login  ,style: TextStyle(height:1.6,fontSize: 44,fontWeight: FontWeight.w500,color: Colors.black54),)),
              Divider(height: 7 , color: Colors.transparent,),

              Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
          color:clrWhiteDrk,

          borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
   // controller: controller,

      onChanged: (_){},
       decoration: InputDecoration(
      icon: Icon(
      Icons.person,
  //  color: kPrim//aryColor,
      ),
      //hintText: hintText,
      border: InputBorder.none,
           hintText: S.of(context)!.email
      ),
      ),
    )
    ,
    Divider(height:12 , color: Colors.transparent,),

    Container(
       margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
color: clrWhiteDrk ,
          borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
   // controller: controller,

      onChanged: (_){},
          obscureText: true,
       decoration: InputDecoration(

           suffixIcon: Icon(Icons.remove_red_eye_outlined),
      icon: Icon(
      Icons.lock,

  //  color: kPrim//aryColor,
      ),
      hintText: (S.of(context)!.password),
      border: InputBorder.none,
      ),
      ),
    ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 2,horizontal: 35)
                ,margin: EdgeInsets.only(bottom: 8),

                child: GestureDetector(

                  child: Text(
                    (S.of(context)!.forgetPass),
                   textAlign: TextAlign.end,
                   style: TextStyle(fontSize: 14 , color: Colors.black54,fontWeight: FontWeight.normal),
                    ),
                  onTap:(){} ,),
              ),
    Container(
      //margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.symmetric(horizontal: 20.5),
    width: double.infinity,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(29),
    child: Container(
    decoration: BoxDecoration(
    // gradient: gradient
    color: clrGreenLight.withOpacity(1)
    ),
    child: FlatButton(

      padding:EdgeInsets.all(20) ,
  //  padding:EdgeInsets.all(20) ,
    // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    // color: color,
//color: clrGreenLight.withOpacity(1),

    onPressed:(){
        Navigator.pushNamed(context, 'profile');
    },
    child: Text(

        (S.of(context)!.loginBtn),

    style: TextStyle( color: Colors.white,height: 1, fontSize: 16,fontWeight: FontWeight.bold),
    ),
    ),
    ),
    ),
    ),
              // Container(width: double.infinity,
              //   height: 120,
              //
              //   margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
              //   //color: Colors.black38,
              //   child: Card(
              //     elevation: 1,
              //     color: clrBack,
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left:6.0 , bottom:6.0 , top:6.0),
              //       child: Row(
              //         children: [
              //           ClipOval(clipBehavior:Clip.antiAliasWithSaveLayer ,child: CircleAvatar(radius: 60,backgroundColor: Colors.white,child: Image(image: AssetImage('assets/logotrans.png') ))),
              //           VerticalDivider(width: 2,color: Colors.transparent,),
              //           Container(
              //               width: 100,
              //              // padding: EdgeInsets.only(top:5),
              //               child:
              //
              //               Column(
              //                   //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                   Padding(
              //                     padding: const EdgeInsets.only(top :7.5),
              //                     child: Text('$appNameEn\n',
              //                       textAlign:TextAlign.start  ,
              //
              //                       style:TextStyle(height: 1.2,
              //                           fontSize: 16,
              //                           color: Colors.black54,
              //
              //                           fontWeight: FontWeight.w600) ,),
              //                   ),
              //                   Text('$appNameAr',
              //                     textAlign:TextAlign.end  ,
              //
              //                     style:TextStyle(height: 0.8,
              //                         fontSize: 16,
              //                         color: Colors.black54,
              //
              //                         fontWeight: FontWeight.w600) ,),
              //
              //
              //                 ],
              //               )
              //
              //
              //           )
              //         ],),
              //     ),
              //   ),),
            ],
          ),
        ),
      ),
    );
  }
}
