import 'package:flutter/material.dart';
import 'package:portfolio/app/theme.dart';
import 'package:portfolio/model/DarkThemeProvider.dart';
import 'package:portfolio/screen/indexscreen.dart';
import 'package:provider/provider.dart';

import '../widget_barrel.dart';

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget? child) {
        return MaterialApp(
          title: TITLE_PERSON_NAME,
          debugShowCheckedModeBanner: false,
          themeMode:
              themeChangeProvider.darkTheme ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          home: IndexScreen(),
        );
      }),
    );
  }
}
