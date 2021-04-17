

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


import '../main.dart';

class PatientScreen extends StatefulWidget {
  @override
  _PatientScreenState createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  //Webview Controller
  InAppWebViewController webView;
  //    _webViewController?.reload();

  bool isLoading = true ;

  @override
  Widget build(BuildContext context) {

    @override
    void initState() {
      super.initState();
      // Enable hybrid composition.
     }
       return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,title: Text('BSCC',style: TextStyle(fontSize: 18,color: Colors.black54),),
         centerTitle: true,
         backgroundColor: clrWhiteDrk,
         elevation:5,
         actions: [IconButton(iconSize:22 ,color: Colors.black45, icon: Icon(Icons.arrow_back_ios_outlined) ,onPressed: () {
           Navigator.pop(context);
         },)],
         // leading:Icon(Icons.account_circle,size:38 ,color: Colors.black45,) ,
       ),

    body:  Stack(
        children: [



          InAppWebView(
           gestureRecognizers: Set() ..add (Factory<VerticalDragGestureRecognizer>(()=> VerticalDragGestureRecognizer()) ),
            initialUrl: "https://patientservices.pscc.med.sa/Login",
            initialHeaders: {},

            onWebViewCreated: (InAppWebViewController controller) {

              webView = controller;
            },
            onLoadStart: (InAppWebViewController controller, String url) {

            },
            onLoadStop: (InAppWebViewController controller, String url) {

              setState(() {
                isLoading = false;
              });
            },

            onReceivedServerTrustAuthRequest: (InAppWebViewController controller, ServerTrustChallenge challenge) async {
              return ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED);
            },
          ),
          (isLoading)? Align(
            alignment: Alignment.topCenter,
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
              minHeight: 3.6,
              valueColor: AlwaysStoppedAnimation(Colors.deepPurple),
            )
            ,):Container(),



        ],
      ),


    ));

  }
}
