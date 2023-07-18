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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find Your Home Service`
  String get homeserviceTitle {
    return Intl.message(
      'Find Your Home Service',
      name: 'homeserviceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectlanguage {
    return Intl.message(
      'Select Language',
      name: 'selectlanguage',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our`
  String get checkboxtext1 {
    return Intl.message(
      'By creating an account, you agree to our',
      name: 'checkboxtext1',
      desc: '',
      args: [],
    );
  }

  /// `Term and Condtions`
  String get checkboxtext2 {
    return Intl.message(
      'Term and Condtions',
      name: 'checkboxtext2',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get button {
    return Intl.message(
      'Enter',
      name: 'button',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get buttonpageview {
    return Intl.message(
      'Next',
      name: 'buttonpageview',
      desc: '',
      args: [],
    );
  }

  /// `TextEnglish`
  String get titlepageviewtext {
    return Intl.message(
      'TextEnglish',
      name: 'titlepageviewtext',
      desc: '',
      args: [],
    );
  }

  /// `TextEnglish`
  String get subtitlepageviewtext {
    return Intl.message(
      'TextEnglish',
      name: 'subtitlepageviewtext',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get logintitle {
    return Intl.message(
      'Login',
      name: 'logintitle',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter your Phone and password to continue`
  String get loginandregistersubtitle {
    return Intl.message(
      'Please Enter your Phone and password to continue',
      name: 'loginandregistersubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Phone`
  String get hinttextphone {
    return Intl.message(
      'Enter Your Phone',
      name: 'hinttextphone',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Full Name`
  String get hinttextfullname {
    return Intl.message(
      'Enter Your Full Name',
      name: 'hinttextfullname',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get hinttextpassword {
    return Intl.message(
      'Enter Your Password',
      name: 'hinttextpassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginbuttontext {
    return Intl.message(
      'Login',
      name: 'loginbuttontext',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registertitle {
    return Intl.message(
      'Register',
      name: 'registertitle',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerbuttontext {
    return Intl.message(
      'Register',
      name: 'registerbuttontext',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetpasswordpagetitle {
    return Intl.message(
      'Reset Password',
      name: 'resetpasswordpagetitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullname {
    return Intl.message(
      'Full Name',
      name: 'fullname',
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

  /// `Confirm Password`
  String get confirmpassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmpassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Confirm Password`
  String get hinttextconfirmpassword {
    return Intl.message(
      'Enter Your Confirm Password',
      name: 'hinttextconfirmpassword',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forgetpassword {
    return Intl.message(
      'Forget Password ?',
      name: 'forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetpassword {
    return Intl.message(
      'Reset Password',
      name: 'resetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Save Password`
  String get savepassword {
    return Intl.message(
      'Save Password',
      name: 'savepassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetpasspagetitle {
    return Intl.message(
      'Forget Password',
      name: 'forgetpasspagetitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Phone Number to reset password.`
  String get forgetpasspagesubtitle {
    return Intl.message(
      'Enter your Phone Number to reset password.',
      name: 'forgetpasspagesubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Create strong and secured new password.`
  String get resetpasswordpagesubtitle {
    return Intl.message(
      'Create strong and secured new password.',
      name: 'resetpasswordpagesubtitle',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Don't Have Account ?`
  String get donthaveaccount {
    return Intl.message(
      'Don\'t Have Account ?',
      name: 'donthaveaccount',
      desc: '',
      args: [],
    );
  }

  /// `Have Account ?`
  String get haveaccount {
    return Intl.message(
      'Have Account ?',
      name: 'haveaccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message(
      'Sign Up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get SignIn {
    return Intl.message(
      'Sign In',
      name: 'SignIn',
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
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
