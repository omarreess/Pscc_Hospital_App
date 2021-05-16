// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static late S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Profile`
  String get navProfile {
    return Intl.message(
      'Profile',
      name: 'navProfile',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get navHome {
    return Intl.message(
      'Home',
      name: 'navHome',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get navServ {
    return Intl.message(
      'Services',
      name: 'navServ',
      desc: '',
      args: [],
    );
  }

  /// `Choose User Type`
  String get chooseAuth {
    return Intl.message(
      'Choose User Type',
      name: 'chooseAuth',
      desc: '',
      args: [],
    );
  }

  /// `Quick Access`
  String get quickAccess {
    return Intl.message(
      'Quick Access',
      name: 'quickAccess',
      desc: '',
      args: [],
    );
  }

  /// `Latest News`
  String get latestNews {
    return Intl.message(
      'Latest News',
      name: 'latestNews',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Passwrod`
  String get forgetPass {
    return Intl.message(
      'Forget Passwrod',
      name: 'forgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginBtn {
    return Intl.message(
      'Login',
      name: 'loginBtn',
      desc: '',
      args: [],
    );
  }

  /// `Admin`
  String get admin {
    return Intl.message(
      'Admin',
      name: 'admin',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get patient {
    return Intl.message(
      'Patient',
      name: 'patient',
      desc: '',
      args: [],
    );
  }

  /// `Doctor`
  String get doctor {
    return Intl.message(
      'Doctor',
      name: 'doctor',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}