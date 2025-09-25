import 'package:go_router/go_router.dart';
import 'package:top_jobs/features/auth/ui/screens/intro_screen/intro_screen.dart';
import 'package:top_jobs/features/auth/ui/screens/sigin_in_screen/signin_screen.dart';
import 'package:top_jobs/features/auth/ui/screens/signup_screen/signup_screen.dart';
import 'package:top_jobs/features/auth/ui/screens/splash_screen/splash_screen.dart';


final introScreen = "/intro-screen";
final splashScreen = "/splash-screen";
final signinScreen = "/signin-screen";
final siginupScreen = "/signup-screen";

final router = GoRouter(
  initialExtra: splashScreen,
  routes: [
    GoRoute(path: splashScreen,builder: (context,state)=>SplashScreen()),
    GoRoute(path: introScreen,builder: (context,state)=>IntroScreen()),
    GoRoute(path: siginupScreen,builder: (context,state)=>SignupScreen()),
    GoRoute(path: signinScreen,builder: (context,state)=>SigninScreen())
  ],
);