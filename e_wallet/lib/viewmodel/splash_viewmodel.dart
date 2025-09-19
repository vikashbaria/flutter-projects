import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewModel {
  void startTimer(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      context.go('/signup');
    });
  }
}
