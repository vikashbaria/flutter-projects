import 'package:e_wallet/widgets/custom_label.dart';
import '../widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void printfunction() {
    print("Login Page Is Working");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF662AB2),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: Image.asset("assets/CashEase.png", height: 20.h),
                      ),
                      SizedBox(height: 6.h),

                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF3A3F4B),
                        ),
                      ),
                      SizedBox(height: 5.h),

                      CustomeLable(text: "Email"),
                      SizedBox(height: 1.h),
                      CustomTextField(
                        label: "Enter your email",
                        isPassword: false,
                      ),
                      SizedBox(height: 3.h),

                      CustomeLable(text: "Password"),
                      SizedBox(height: 1.h),
                      CustomTextField(
                        label: "Enter your password",
                        isPassword: true,
                      ),
                      SizedBox(height: 5.h),

                      Center(
                        child: CustomButton(
                          text: "Login",
                          onPressed: printfunction,
                        ),
                      ),
                      SizedBox(height: 3.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
