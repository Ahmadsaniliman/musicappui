import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class SleepTimeScreen extends StatelessWidget {
  const SleepTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List timeList = [
      'End of track',
      '60 seconds',
      '5 minutes',
      '10 minutes',
      '15 minutes',
      '30 minutes',
      '1 houe',
    ];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              blackColor,
              Color.fromARGB(255, 96, 93, 93),
            ],
          ),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 393.h,
                width: 231.w,
                child: Column(
                  children: [
                    const Text(
                      'Stop audio in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          timeList.length,
                          (index) => Container(
                            margin: EdgeInsets.only(bottom: 10.h),
                            child: Text(
                              timeList[index],
                              style: const TextStyle(
                                color: Colors.white,
                                
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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
