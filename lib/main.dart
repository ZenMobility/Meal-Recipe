import 'dart:io';

import 'package:zensar_recipe_app/screens/home.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
  runApp(HomePage());
}


