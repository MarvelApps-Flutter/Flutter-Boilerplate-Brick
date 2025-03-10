import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/viewmodels/base_viewmodel.dart';

import '../main.dart';

class MaterialAppViewModel extends BaseViewModel {
  int count = 1;

  void changeLanguage(BuildContext context) async {
    if (MyApp.of(context)!.localeName == 'en') {
      MyApp.of(context)!.setLocale(const Locale('es'));
    } else {
      MyApp.of(context)!.setLocale(const Locale('en'));
    }
  }
}
