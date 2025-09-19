import 'package:e_wallet/widgets/custom_label.dart';
import 'package:e_wallet/widgets/header_container.dart';
import '../widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF662AB2),
      body: Column(
        children: [
          Headercontainer(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),

              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/CashEase.png",
                        // height: 15.h,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF3A3F4B),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          CustomeLable(text: "Email"),
                          SizedBox(height: 1.h),
                          CustomTextField(label: "Email", isPassword: false),
                          SizedBox(height: 3.h),
                          CustomeLable(text: "Password"),
                          SizedBox(height: 1.h),
                          CustomTextField(label: "Password", isPassword: true),
                          SizedBox(height: 5.h),
                          Center(
                            child: CustomButton(
                              text: "Signup",
                              onPressed: () {
                                context.go('/login');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
