// ignore_for_file: use_super_parameters, prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prepulse/src/constants/image_string.dart';
import 'welcome_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
 with SingleTickerProviderStateMixin{
 
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(milliseconds: 2500), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const WelcomePage()));
    });
  }

  @override
  void dispose() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }




  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage(Splashscreenlogo),
          height: 500,
          width: 500,
          fit: BoxFit.cover,
         
        ),
       ) ,
    );
  }
}

