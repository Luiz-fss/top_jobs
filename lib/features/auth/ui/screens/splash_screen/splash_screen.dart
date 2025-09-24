import 'package:flutter/material.dart';
import 'package:top_jobs/features/shared/components/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: "te.", fontSize: 150),
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
