import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zensar_recipe_app/controler/main_controller.dart';
import 'package:zensar_recipe_app/screens/home.dart';

void main() async {
  print("step 1");
  WidgetsFlutterBinding.ensureInitialized();
  print("step 2");
  final MainController mc = Get.put(MainController());
  print("step 3");
  mc.initFireBase();
  print("step 4");

// Run the app
  runApp(HomePage());
}


