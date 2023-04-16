import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/View/Authentictaion/IntroScreen1.dart';
import 'package:metime/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeTime',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
        platform: TargetPlatform.android,
        appBarTheme: const AppBarTheme(
          color: Colors.orange,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            // fontSize: 18,
          ),
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: const IntroScreen1(),
      // home: const ProfileInformationScreen(),
    );
  }
}
