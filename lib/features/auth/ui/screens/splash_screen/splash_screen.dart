import 'package:flutter/material.dart';
import 'package:top_jobs/configs/router/app_router.dart';
import 'package:top_jobs/features/shared/components/custom_text.dart';
import 'package:go_router/go_router.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000),(){
      if(mounted){
        context.push(introScreen);
      }
    });
  }

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
