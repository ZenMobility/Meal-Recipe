import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/favorites_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/recipe_screen.dart';
import 'screens/register_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/welcome_screen.dart';
// Main function
void main() async {
// Ensure that Flutter is initialized and Firebase is ready
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA8kFwMnaNtO348jPL4xVTbgUZu-yF4ULg",
      appId: "1:672370746332:android:cb90b6d9d89d776a2b6519",
      messagingSenderId: "672370746332",
      projectId: "zensar-recipe-app",
    ),
  ):await Firebase.initializeApp();
// Run the app
  runApp(MyApp());
}

// The main app widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// Wrap the app with AdaptiveTheme to enable dynamic light/dark theme switching
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      initial: AdaptiveThemeMode.light, // Set the initial theme mode to light
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Zensar Meal App',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute:
        WelcomeScreen.id, // Set the initial route to the welcome screen
        routes: {
// Define routes for each screen
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          RecipeScreen.id: (context) => RecipeScreen(
              recipe: ModalRoute.of(context)!.settings.arguments as dynamic),
          SettingsScreen.id: (context) => SettingsScreen(),
          FavoritesScreen.id: (context) => FavoritesScreen(),
        },
      ),
    );
  }
}
