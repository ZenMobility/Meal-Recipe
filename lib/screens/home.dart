import 'package:flutter/material.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:zensar_recipe_app/utils/constants.dart';

import 'favorites_screen.dart';
import 'search_screen.dart';
import 'login_screen.dart';
import 'recipe_screen.dart';
import 'register_screen.dart';
import 'settings_screen.dart';
import 'welcome_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: kBrightness,
        primarySwatch: kOrange,
      ),
      dark: ThemeData(
        brightness: kDark,
        primarySwatch: kOrange,
      ),
      initial: AdaptiveThemeMode.light, // Setting the initial theme mode to light
      builder: (theme, darkTheme) => MaterialApp(
        title: kAppTitle,
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id, // Setting the initial route to the welcome screen
        routes: {
// routes for each screen
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
          SearchScreen.id: (context) => SearchScreen(),
          RecipeScreen.id: (context) => RecipeScreen(
              recipe: ModalRoute.of(context)!.settings.arguments as dynamic),
          SettingsScreen.id: (context) => SettingsScreen(),
          FavoritesScreen.id: (context) => FavoritesScreen(),
        },
      ),
    );
  }
}
