import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class CreateNewPlayList extends StatelessWidget {
  const CreateNewPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [blackColor, Colors.black],
            begin: Alignment.centerRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 50.w),
          child: Column(
            children: [
                SizedBox(height: 450.h),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New Playlist',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Give your playlist a title',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 15.h),
                    Column(
                      children: [
                        const Text(
                          'Privacy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          height: 30.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: bolor1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.arrow_drop_down),
                              Text(
                                'Public',
                                style: TextStyle(color: bolor1),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: bolor1,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: defaultColor),
                          child: const Center(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 30.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: bolor1),
                          child: const Center(
                            child: Text(
                              'Create',
                              style: TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}
