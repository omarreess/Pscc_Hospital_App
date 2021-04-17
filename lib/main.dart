import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import 'localization/generated/l10n.dart';
import 'ui/AdminScreen.dart';
import 'ui/ChooseAuth.dart';
import 'ui/LoginScreen.dart';
import 'ui/PatientScreen.dart';
 import 'ui/ProfileScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
 class LanguageCurrent extends ChangeNotifier {
 String languageApp = 'en';

  void changeLang() {

    (languageApp=='ar')?languageApp='en':languageApp='ar';
    //text = 'Something was clicked';
    notifyListeners();
  }
}


class _MyAppState extends State<MyApp> {

   @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageCurrent(),



      child: Consumer<LanguageCurrent>(
        builder: (context, langCurrent, child) {
          return  MaterialApp(
            locale: Locale(langCurrent.languageApp, ""),

            //place to be localized
            localizationsDelegates: [

              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],


            supportedLocales: [
              const Locale('en', ''), // empty lang code
              const Locale('ar', ''), // empty lang code

            ],

            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,

            theme: ThemeData(

              textTheme: GoogleFonts.cairoTextTheme(),


              primarySwatch: Colors.blue,
              // This makes the visual density adapt to the platform that you run
              // the app on. For desktop platforms, the controls will be smaller and
              // closer together (more dense) than on mobile platforms.
              visualDensity: VisualDensity.adaptivePlatformDensity,

            ),
            initialRoute: 'admin',
            routes: appRoutes,
          );
        },

       ),
    );
  }
}


final appRoutes =   {

  // 'splash': (context) => SplashScreen(),
  // 'sub': (context) => Sub(),
  // 'general': (context) => GeneralScreen(),
  // 'doctor': (context) => DoctorScreen(),
  // 'patient': (context) => PatientScreen(),
  // 'auth': (context) => AuthScreen(),
 // 'choose': (context) => ChooseAuthScreen(),
  'admin': (_) => AdminScreen(),
  'patient': (_) => PatientScreen(),
  'login': (_) => LoginScreen(),
  'profile': (_) => ProfileScreen(),
  'choose': (_) => ChooseAuthScreen(),
};



final appNameAr=' مركز الامير سلطان لمعالجة امراض القلب ';
final appNameEn='Prince Sultan\nCardiac Center';
//List<Color> clrList =[Color(int.parse('#0041C4'.replaceAll('#', '0xff'))) , Color(int.parse('#03C4E5'.replaceAll('#', '0xff'))),Color(int.parse('#A9C0FF'.replaceAll('#C2DC81', '0xff'))),Color(int.parse('#A9C0FF'.replaceAll('#002251', '0xff')))];
final clrBack = Color(int.parse('#E9EFEC'.replaceAll('#', '0xff')));
final clrGreen = Color(int.parse('#79C2A0'.replaceAll('#', '0xff')));
final clrGreenLight = Color(int.parse('#94D2B3'.replaceAll('#', '0xff')));
final clrGreenHaz = Color(int.parse('#C2DC81'.replaceAll('#', '0xff')));
final clrBlue = Color(int.parse('#3A46E1'.replaceAll('#', '0xff')));
final clrRed = Color(int.parse('#AA6B87'.replaceAll('#', '0xff')));
final clrWhiteDrk = Color(int.parse('#F1F1F1'.replaceAll('#', '0xff')));
 final clrBlueLight = Color(int.parse('#A9C0FF'.replaceAll('#', '0xff')));





