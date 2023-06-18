import 'dart:io';

import 'package:get/get.dart';
import 'package:zensar_recipe_app/controler/main_controller.dart';
import 'package:zensar_recipe_app/screens/home.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zensar_recipe_app/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final MainController mc = Get.put(MainController());
  mc.initFireBase();
// Run the app
  runApp(HomePage());
}


