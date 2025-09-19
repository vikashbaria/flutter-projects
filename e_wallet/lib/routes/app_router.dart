import 'package:e_wallet/view/signup_screen.dart';
import 'package:go_router/go_router.dart';
import '../view/splash_screen.dart';
import '../view/login_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),

      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),

      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
    ],
  );
}
