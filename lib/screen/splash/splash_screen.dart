import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/OnBoarding/on_boarding_screen.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/whatsapp 1.png",width: 83,height: 83,),
              const SizedBox(height: 20),
              UIHelper.CustomText(
                  text: "WhatsApp",
                  fontSize: 18,
                  color: const Color(0XFF000000),
                  fontWeight: FontWeight.w700
              )
            ],
          ),
        ),
    );
  }
}
