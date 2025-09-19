import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Headercontainer extends StatelessWidget {
  const Headercontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: double.infinity,
      color: const Color(0xFF662AB2),
      child: Stack(
        children: [
          Positioned(
            top: 40.w,
            left: -12,
            child: Image.asset("assets/Ellipse 15.png"),
          ),

          Positioned(
            top: 4.w,
            right: -22.h,
            child: Image.asset("assets/Ellipse 14.png"),
          ),
        ],
      ),
    );
  }
}
