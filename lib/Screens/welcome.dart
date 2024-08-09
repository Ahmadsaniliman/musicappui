import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/sign_in.dart';
import 'package:musicapp/Util/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bolor1,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 120.h,
              child: Image.asset(
                'assets/images/img_girl.png',
                height: 407.h,
                width: 428.w,
                // color: bolor1,
              ),
            ),
            Positioned(
              top: 20.h,
              right: 20.w,
              child: Image.asset(
                'assets/images/2 Ellipse 4.png',
                height: 78.h,
                width: 78.w,
              ),
            ),
            Positioned(
              top: 10.h,
              left: 20.w,
              child: Image.asset(
                'assets/images/2 Ellipse 2.png',
                height: 146.h,
                width: 149.w,
              ),
            ),
            Positioned(
              top: 200.h,
              right: 20.w,
              child: Image.asset(
                'assets/images/2 Ellipse 3.png',
                height: 103.h,
                width: 103.w,
              ),
            ),
            Positioned(
              bottom: 0.h,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 400.h,
                width: 435.w,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(45).w,
                    topLeft: const Radius.circular(45).w,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text.rich(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      TextSpan(
                        children: [
                          TextSpan(text: 'From the'),
                          TextSpan(
                              text: ' latest ',
                              style: TextStyle(color: bolor1)),
                          TextSpan(text: 'to the\n'),
                          TextSpan(
                              text: 'gratest', style: TextStyle(color: bolor1)),
                          TextSpan(text: ' hits,'),
                          TextSpan(text: ' play your \nfavourite tracks on, '),
                          TextSpan(
                              text: 'musium\n',
                              style: TextStyle(color: bolor1)),
                          TextSpan(text: 'now!'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130.w),
                      child: Row(
                        children: [
                          Container(
                            height: 10.h,
                            width: 53.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              color: bolor1,
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Container(
                            height: 10.h,
                            width: 53.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Container(
                        height: 59.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: bolor1,
                        ),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
