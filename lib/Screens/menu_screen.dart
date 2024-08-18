import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/sleep_time_screen.dart';
import 'package:musicapp/Util/colors.dart';
import 'package:musicapp/queue.dart';

class SongMenScreen extends StatelessWidget {
  const SongMenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> addList = [
      {
        'image': 'assets/images/music add.png',
        'text': 'Add to playlist',
      },
      {
        'image': 'assets/images/add (1).png',
        'text': 'Add to queue',
      },
      {
        'image': 'assets/images/remove.png',
        'text': 'Remove from playlist',
      },
      {
        'image': 'assets/images/tag.png',
        'text': 'Modify tags',
      },
      {
        'image': 'assets/images/artist.png',
        'text': 'View artist',
      },
      {
        'image': 'assets/images/disc.png',
        'text': 'View album',
      },
      {
        'image': 'assets/images/user-information.png',
        'text': 'Show credits',
      },
      {
        'image': 'assets/images/download.png',
        'text': 'Download',
      },
      {
        'image': 'assets/images/share.png',
        'text': 'Share',
      },
      {
        'image': 'assets/images/qr-code.png',
        'text': 'Generate QR code',
      },
      {
        'image': 'assets/images/moon.png',
        'text': 'Sleep timer',
      },
      {
        'image': 'assets/images/hide.png',
        'text': 'Hide song',
      },
      {
        'image': 'assets/images/radio-signal.png',
        'text': 'Go to song radio',
      }
    ];
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 50.h,
          right: 20.w,
          left: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      color: bolor1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const QueueScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  height: 220.h,
                  width: 230.w,
                  child: Image.asset('assets/images/Rectangle 19.png'),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: const Column(
                    children: [
                      Text(
                        'grainy days',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'moody',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  children: [
                    ...List.generate(
                      addList.length,
                      (index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const SleepTimeScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          height: 50.h,
                          width: 250.w,
                          child: Row(
                            children: [
                              Image.asset(addList[index]['image']!),
                              SizedBox(width: 15.w),
                              Text(
                                addList[index]['text']!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
