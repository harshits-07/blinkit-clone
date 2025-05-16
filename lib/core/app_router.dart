import 'package:blinkit_clone/screens/login-screen/login_screen.dart';
import 'package:blinkit_clone/screens/splash-screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.path,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: LoginScreen.path,
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}
