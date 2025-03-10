import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/theme/themes.dart';
import 'package:flutter_boilerplate/viewmodels/material_app_viewmodel.dart';
import 'package:flutter_boilerplate/views/screens/base_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'router/app_router.dart';
import 'views/screens/demo_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();
}

class MyAppState extends State<MyApp> {
  Locale? currentLocale = const Locale('en');
  String localeName = "en";

  void setLocale(Locale value) {
    setState(() {
      currentLocale = value;
      localeName = value.languageCode;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Localization directory
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    return BaseView<MaterialAppViewModel>(
        onModelReady: (viewmodel) {},
        viewModel: MaterialAppViewModel(),
        builder: (context, viewmodel, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            localizationsDelegates: [
              // delegate from flutter_localization
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,

              LocalJsonLocalization.delegate,
            ],
            onGenerateRoute: PageRouter.generateRoute,
            theme: lightTheme(context),
            supportedLocales: const [
              Locale('en'),
              Locale('es'),
            ],
            darkTheme: darkTheme(context),
            locale: currentLocale,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}
