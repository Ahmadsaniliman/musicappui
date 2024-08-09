import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/login.dart';
import 'package:musicapp/Util/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back, color: Colors.white),
              SizedBox(height: 20.h),
              Center(
                child: SizedBox(
                  height: 254.h,
                  width: 325.w,
                  child: Image.asset('assets/images/musium logo.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: Text(
                    'Let’s get you in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 59.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/google , 1.png'),
                      SizedBox(width: 10.w),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 59.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/e 1.png'),
                      SizedBox(width: 10.w),
                      const Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 59.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/e (1) 1.png'),
                      SizedBox(width: 10.w),
                      const Text(
                        'Continue with Apple',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Container(
                      height: 2,
                      width: 180.w,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: const Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 180.w,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  height: 59,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: bolor1,
                  ),
                  child: const Center(
                    child: Text(
                      'Log in with a password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    ' Sign Up',
                    style: TextStyle(color: bolor1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
