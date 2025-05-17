import 'package:blinkit_clone/screens/bottom-navbar/bottom_navbar_screen.dart';
import 'package:blinkit_clone/screens/cart-screen/cart_screen.dart';
import 'package:blinkit_clone/screens/category-screen/category_screen.dart';
import 'package:blinkit_clone/screens/home-screen/home_screen.dart';
import 'package:blinkit_clone/screens/login-screen/login_screen.dart';
import 'package:blinkit_clone/screens/print-screen/print_screen.dart';
import 'package:blinkit_clone/screens/splash-screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.path,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: LoginScreen.path,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: BottomNavbarScreen.path,
        builder: (context, state) => const BottomNavbarScreen(),
      ),
      GoRoute(
        path: HomeScreen.path,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: CartScreen.path,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: CategoryScreen.path,
        builder: (context, state) => const CategoryScreen(),
      ),
      GoRoute(
        path: PrintScreen.path,
        builder: (context, state) => const PrintScreen(),
      ),
    ],
  );
}
