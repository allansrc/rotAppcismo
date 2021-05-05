import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotappcismo/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    onSplash();
    super.initState();
  }

  onSplash() async {
    await Future.delayed(Duration(seconds: 4));
    Get.toNamed(AppRoutes.initial);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: GestureDetector(
        onTap: () => Get.toNamed(AppRoutes.initial),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Text(
                'rotAppcismo',
                style: GoogleFonts.architectsDaughter(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Equipe:',
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'TEIXEIRA, Allan; ',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'VIEIRA, Alcione; ',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'SILVA Jr, Leônidas ',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ]),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
