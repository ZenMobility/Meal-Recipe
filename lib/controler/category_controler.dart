import 'dart:convert';

import 'package:get/get.dart';

import '../utils/constants.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CategoryController extends GetxController {

  var isLoading = false.obs;
  var categorydata =  List<dynamic>.empty().obs;

  @override
  void onInit(){
    super.onInit();
  }

  Future<List<dynamic>> getCategories() async {
    List<dynamic> cats = [];
    isLoading.value = true;
    final response = await http.get(Uri.parse(kMealsCategories));
    if (response.statusCode == 200) {
     // setState(() {
        isLoading.value = false;
        categorydata.value = json.decode(response.body)['categories'];
     // });
    } else {
      isLoading.value = false;
      throw Exception('Failed to search recipes');
    }
    return cats;
  }


}
