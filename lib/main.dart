import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/home/home_page.dart';
import 'pages/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: AppPages.pages,
        debugShowCheckedModeBanner: false,
        home: HomePage(title: 'rotAppcismo'),
        theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Color(0xff4CAF50),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
  }
}
