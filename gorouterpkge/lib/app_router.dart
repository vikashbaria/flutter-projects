import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/profile_page.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/about',
        name: 'about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: '/profile/:id',
        name: 'profile',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ProfilePage(id: id);
        },
      ),
    ],
  );
}
