import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/core/app_theme.dart';
import 'src/viewmodels/cart_viewmodel.dart';
import 'src/viewmodels/catalog_viewmodel.dart';
import 'src/viewmodels/theme_viewmodel.dart';
import 'src/views/home/home_screen.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeViewModel()),
        ChangeNotifierProvider(create: (_) => CatalogViewModel()..load()),
        ChangeNotifierProvider(create: (_) => CartViewModel()),
      ],
      child: Consumer<ThemeViewModel>(
        builder: (context, theme, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Plants Shop',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: theme.themeMode,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
