import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/menu_screen.dart';
import 'package:musicapp/Util/colors.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: blackColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 70.h,
              right: 20.w,
              left: 20.w,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PLAYING FROM PLAYLIST',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Lofi Lofti',
                              style: TextStyle(color: bolor1),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
                //
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35.h),
                  child: SizedBox(
                    height: 330.h,
                    width: 345.w,
                    child: Image.asset('assets/images/Rectangle 19.png'),
                  ),
                ),
                //
                //
                SizedBox(
                  height: 250.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'grainy days',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.h,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'moody',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 10.w),
                              const Icon(
                                Icons.favorite_outline,
                                color: bolor1,
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      //
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 8.h,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              height: 4,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                            Container(
                              height: 4,
                              width: 300.w,
                              color: bolor1,
                            ),
                          ],
                        ),
                      ),
                      //
                      //
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.w, vertical: 15.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.shuffle,
                              color: Colors.white,
                              size: 17,
                            ),
                            Image.asset('assets/images/Union (1).png'),
                            Container(
                              height: 56.h,
                              width: 56.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: bolor1,
                              ),
                              child: const Icon(Icons.play_arrow,
                                  color: Colors.white),
                            ),
                            Image.asset('assets/images/Union.png'),
                            Image.asset('assets/images/equalizer.png'),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => const SongMenScreen(),
                                  ),
                                  (route) => false,
                                );
                              },
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            )
                          ],
                        ),
                      ), //
                      Padding(
                        padding: EdgeInsets.only(top: 25.h, left: 300.w),
                        child: Image.asset('assets/images/download.png'),
                      ),
                      //
                    ],
                  ),
                ),
                //
                //

                SizedBox(
                  height: 350.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lyrics',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 20.w),
                        height: 300.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: bolor1,
                        ),
                        child: const Text(
                          '''You never look at the sky
Cause you think it's too high
You never look at the stars
Cause you think they're too far
But they're showing the lights to the way back home 
When you don't know where to go
Cause you think it's too high
You never look at the stars
Cause you think they're too far
But they're showing the lights to the way back home 
When you don't know where to go
Cause you think it's too high
You never look at the stars
Cause you think they're too far
But they're showing the lights to the way back home 
When you don't know where to go
''',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
