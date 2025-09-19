import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../viewmodel/splash_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashViewModel _viewModel = SplashViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.startTimer(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9B1CAA), Color(0xFF36086D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20.w,
                width: 40.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo_splash.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                "CashEase",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
