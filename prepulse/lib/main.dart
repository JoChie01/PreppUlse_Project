// ignore_for_file: use_super_parameters, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:prepulse/firebase_options.dart';
import 'package:prepulse/pages/01.home/home_page.dart';

import 'package:prepulse/src/screen_pages/splash_screen.dart';
import 'package:prepulse/src/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      themeMode: ThemeMode.system, //darkmode and lightmode of system
      home: const HomePage(),
    );
  }
}
