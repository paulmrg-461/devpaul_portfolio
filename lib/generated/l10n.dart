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

  /// `Home`
  String get home_page_menu_home {
    return Intl.message(
      'Home',
      name: 'home_page_menu_home',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get home_page_menu_about {
    return Intl.message(
      'About',
      name: 'home_page_menu_about',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get home_page_menu_contact {
    return Intl.message(
      'Contact',
      name: 'home_page_menu_contact',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get home_page_menu_location {
    return Intl.message(
      'Location',
      name: 'home_page_menu_location',
      desc: '',
      args: [],
    );
  }

  /// `Resume`
  String get home_page_resume {
    return Intl.message(
      'Resume',
      name: 'home_page_resume',
      desc: '',
      args: [],
    );
  }

  /// `Hi, I am`
  String get home_page_title_1 {
    return Intl.message(
      'Hi, I am',
      name: 'home_page_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Paul Realpe`
  String get home_page_title_2 {
    return Intl.message(
      'Paul Realpe',
      name: 'home_page_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Software Developer`
  String get home_page_title_3 {
    return Intl.message(
      'Software Developer',
      name: 'home_page_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Explore now`
  String get home_page_explore_button {
    return Intl.message(
      'Explore now',
      name: 'home_page_explore_button',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get home_page_whatsapp_button {
    return Intl.message(
      'WhatsApp',
      name: 'home_page_whatsapp_button',
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
