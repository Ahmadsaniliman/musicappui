import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/home_page.dart';
import 'package:musicapp/Util/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(height: 15.h),
                Center(
                  child: SizedBox(
                    height: 215.h,
                    width: 275.w,
                    child: Image.asset('assets/images/musium logo.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: const Center(
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
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
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 59.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 0.5),
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
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
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: const Center(
                    child: Text(
                      'Forgot the password?',
                      style: TextStyle(color: bolor1),
                    ),
                  ),
                ),
                //
                Row(
                  children: [
                    Container(
                      height: 2,
                      width: 130.w,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: const Text(
                        'or continue with',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 130.w,
                      color: Colors.white,
                    ),
                  ],
                ),
                //
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 70.w, vertical: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 48.93.h,
                        width: 50.59.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Image.asset('assets/images/google , 1.png'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 48.93.h,
                        width: 50.59.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Image.asset('assets/images/e 1.png'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 48.93.h,
                        width: 50.59.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Image.asset('assets/images/e (1) 1.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(color: bolor1),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
