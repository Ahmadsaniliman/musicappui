import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> trackData = [
      {
        'num': '1',
        'image': 'assets/images/Rectangle 30 (4).png',
        'name': 'Swim',
        'sub': 'Chase Atlantic',
      },
      {
        'num': '2',
        'image': 'assets/images/Rectangle 30 (5).png',
        'name': 'Time',
        'sub': 'NF',
      },
      {
        'num': '3',
        'image': 'assets/images/Rectangle 30 (5).png',
        'name': 'Time',
        'sub': 'NF',
      },
      {
        'num': '4',
        'image': 'assets/images/Rectangle 30 (9).png',
        'name': 'Movies',
        'sub': 'Conan Gray',
      },
      {
        'num': '5',
        'image': 'assets/images/Rectangle 30 (6).png',
        'name': 'Lowkey',
        'sub': 'NIKI',
      },
      {
        'num': '6',
        'image': 'assets/images/Rectangle 30 (7).png',
        'name': 'Hurt',
        'sub': 'NewJeans',
      },
      {
        'num': '7',
        'image': 'assets/images/Rectangle 300.png',
        'name': 'ILLUSION',
        'sub': 'aespa',
      },
      {
        'num': '8',
        'image': 'assets/images/Rectangle 300.png',
        'name': 'PINK VENOM',
        'sub': 'BLACKPRINK',
      },
      {
        'num': '9',
        'image': 'assets/images/Rectangle 300.png',
        'name': 'MOODS',
        'sub': 'Nothing',
      },
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
        height: 50.h,
        width: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '30 days',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '30 days',
              style: TextStyle(color: bolor1),
            ),
            Text(
              '30 days',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '30 days',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: blackColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back, color: Colors.white),
                    const Text.rich(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Top\n',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Past 30 days',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/menu.png'),
                        SizedBox(width: 10.w),
                        Image.asset('assets/images/add-lg.png'),
                      ],
                    ),
                  ],
                ),
                //
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Tracks',
                            style: TextStyle(
                                color: bolor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 2.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: bolor1,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Artists',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 2.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: blackColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Albums',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 2.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: blackColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //
                //
                //
                SizedBox(
                  height: 700.h,
                  child: ListView.builder(
                    itemCount: trackData.length,
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 20.w),
                      margin: EdgeInsets.only(bottom: 15.h),
                      height: 79.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 37, 42, 43)),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            trackData[index]['num']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 45.w),
                          Image.asset(
                            trackData[index]['image']!,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 45.w),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${trackData[index]['name']}\n',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                TextSpan(
                                  text: trackData[index]['sub']!,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
