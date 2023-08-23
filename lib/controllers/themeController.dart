import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/services/api_services.dart';

class ThemeController extends GetxController {
  @override
  void onInit() {
    currentWeatherData = getCurrentWeather();
    super.onInit();
  }

  var currentWeatherData;
  var isDark = false.obs;

  changeTheme() {
    isDark.value = !isDark.value;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
