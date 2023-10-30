import 'package:flutter/material.dart';
import 'package:lms_product/Pages/HomeScreen.dart';
import 'package:lms_product/Pages/login.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3), () => true), // 3-second delay
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Transition to the main screen (HomeScreen)
            WidgetsBinding.instance!.addPostFrameCallback((_) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>LoginWidget(),
                  // LoginWidget(),
                ),
              );
            });
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo_app.png'),
                      fit: BoxFit.contain
                      ),
                  ),
              ),
            ),
          );
        },
      ),
    );
  }
}
