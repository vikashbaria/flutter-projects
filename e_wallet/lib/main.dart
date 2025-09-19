import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:e_wallet/routes/app_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "Cash E-Wallet",
          routerConfig: AppRouter.router,

          theme: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
        );
      },
    );
  }
}
