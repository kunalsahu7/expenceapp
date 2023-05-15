import 'package:expenceapp/screens/Expences_page/view/Exapences_Screen.dart';
import 'package:expenceapp/screens/Read_page/view/Read_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => Expences_homescreen(),),
        GetPage(name: '/read', page: () => reeadscreen(),),
      ],
    ),
  );
}
