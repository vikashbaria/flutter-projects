import 'pages/signup.dart';
import 'package:go_router/go_router.dart';
import 'pages/welcome.dart';
import 'pages/sign-in.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: "welcome",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/signin",
      name: "signin",
      builder: (context, state) => const Signin(),
    ),

    GoRoute(
      path: "/signup",
      name: "signup",
      builder: (context, state) => const Signup(),
    ),
  ],
);
