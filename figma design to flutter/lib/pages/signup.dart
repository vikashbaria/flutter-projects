import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/signup.png',
            // height: 550,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 400),
          Padding(
            padding: const EdgeInsets.only(top: 240, left: 24),
            child: Column(
              children: [
                Stack(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 38,
                        letterSpacing: 0,
                        color: Color(0xFF424242),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 60),
                        height: 4,
                        width: 74,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF8383),
                          borderRadius: BorderRadius.circular(
                            2,
                          ), // rounded line
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 100, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, size: 16),
                              hintText: 'Enter Your Email Address',
                              hintStyle: TextStyle(
                                color: Color(0xFF616161),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),

                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF8383),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Phone",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter your Phone No",
                              hintStyle: TextStyle(
                                color: Color(0xFF616161),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF8383),
                                  width: 2,
                                ),
                              ),
                              prefixIcon: Icon(Icons.phone, size: 16),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: TextStyle(
                                color: Color(0xFF616161),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF8383),
                                  width: 2,
                                ),
                              ),
                              prefixIcon: Icon(Icons.lock_outline, size: 16),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_sharp,
                                size: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Confirm Password",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Confirm your password",
                              hintStyle: TextStyle(
                                color: Color(0xFF616161),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF8383),
                                  width: 2,
                                ),
                              ),
                              prefixIcon: Icon(Icons.lock_outline, size: 16),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_sharp,
                                size: 16,
                              ),
                            ),
                          ),

                          SizedBox(height: 60),

                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFF8383),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an Account?",
                                  style: TextStyle(
                                    color: Color(0xFF9E9E9E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5),

                                InkWell(
                                  onTap: () {
                                    context.go('/signin');
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color(0xFFFF8383),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
