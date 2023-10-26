import 'package:flutter/material.dart';
import 'package:lms_product/Pages/HomeScreen.dart';
import 'package:lms_product/Pages/login.dart';
import 'package:lms_product/Pages/signup.dart';
import 'package:lms_product/Pages/splash_screen.dart';


void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black.withOpacity(0)
      )
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/login':(context) => LoginWidget(),
        '/signup':(context) => SignUp(),
      },
    );
  }
}
