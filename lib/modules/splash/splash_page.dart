import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotappcismo/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _visible = false;

  @override
  void initState() {
    onSplash();
    super.initState();
  }

  onSplash() async {
    await Future.delayed(Duration(milliseconds: 400));
    setState(() {
      _visible = !_visible;
    });
    await Future.delayed(Duration(seconds: 3));
    Get.toNamed(AppRoutes.initial);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => Get.toNamed(AppRoutes.initial),
        child: Center(
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 800),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash.jpeg'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
