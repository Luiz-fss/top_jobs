import 'package:flutter/material.dart';
import 'package:top_jobs/configs/router/app_router.dart';
import 'package:top_jobs/configs/theme/app_theme.dart';
import 'package:top_jobs/features/auth/ui/screens/splash_screen/splash_screen.dart';

import 'features/auth/ui/screens/sigin_in_screen/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'te',
      theme: AppTheme().getTheme(true),
      routerConfig: router,
    );
  }
}
