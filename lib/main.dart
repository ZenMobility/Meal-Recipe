import 'dart:io';

import 'package:zensar_recipe_app/screens/home.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zensar_recipe_app/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: kAppKey,
      appId: kAppId,
      messagingSenderId:kMessagingSenderId,
      projectId: kProjectId,
    ),
  ):await Firebase.initializeApp();
// Run the app
  runApp(HomePage());
}


