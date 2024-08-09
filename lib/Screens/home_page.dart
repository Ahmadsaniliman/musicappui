import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/explore_page.dart';
import 'package:musicapp/Screens/library.dart';
import 'package:musicapp/Util/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> data = [
      {
        'image': 'assets/images/No time to die Pic 2.png',
        'text': 'Coffee & Jazz',
      },
      {
        'image': 'assets/images/image 8 (3).png',
        'text': 'RELEASED',
      },
      {
        'image': 'assets/images/Rectangle 30.png',
        'text': 'Anything Goes',
      },
      {
        'image': 'assets/images/No time to die Pic 6.png',
        'text': 'Anime OSTs',
      },
      {
        'image': 'assets/images/No time to die Pic 4.png',
        'text': 'Harry"s house',
      },
      {
        'image': 'assets/images/No time to die Pic 4.png',
        'text': 'Lo-fi Beats',
      },
    ];
    List<Map<String, dynamic>> mixData = [
      {
        'image': 'assets/images/Rectangle 17.png',
        'text': 'Pop Music',
        'color': const Color(0xFFFF7777),
      },
      {
        'image': 'assets/images/Rectangle 17 (1).png',
        'text': 'Chill Mix',
        'color': const Color(0xFFFFFA77),
      },
      {
        'image': 'assets/images/kpop.png',
        'text': 'Kpop',
        'color': const Color(0xFF77FF95),
      },
    ];
    List<Map<String, dynamic>> baseData = [
      {
        'image': 'assets/images/No time to die Pic 4 (1).png',
      },
      {
        'image': 'assets/images/Rectangle 31.png',
      },
    ];
    int selectedOne = 0;

    return Scaffold(
      // final BottomNavBar navbar;
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 50.w),
        height: 68,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: defaultColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 50,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    color: selectedOne == 0 ? bolor1 : Colors.white,
                  ),
                  Text('Home',
                      style: TextStyle(
                          color: selectedOne == 0 ? bolor1 : Colors.white)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const ExplorePage(),
                  ),
                  (route) => false,
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.search,
                      color: selectedOne == 1 ? bolor1 : Colors.white),
                  Text('Explore',
                      style: TextStyle(
                          color: selectedOne == 1 ? bolor1 : Colors.white)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const LibraryPage(),
                  ),
                  (route) => false,
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.library_add,
                      color: selectedOne == 2 ? bolor1 : Colors.white),
                  Text('Library',
                      style: TextStyle(
                          color: selectedOne == 2 ? bolor1 : Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: defaultColor,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 10, 23, 24),
              Color(0xFF0E0E0E),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Ellipse 8 (2).png'),
                        SizedBox(width: 15.w),
                        const Text.rich(
                          TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: 'Welcome Back !\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Ahmad Liman',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/Vector.png'),
                        SizedBox(width: 10.w),
                        Image.asset('assets/images/bell (2).png'),
                        SizedBox(width: 10.w),
                        Image.asset('assets/images/settings.png'),
                      ],
                    ),
                  ],
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Continue Listening',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Wrap(
                        runSpacing: 15.w,
                        spacing: 20.h,
                        children: [
                          ...List.generate(
                            6,
                            (index) => Container(
                              height: 55.h,
                              width: 183.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFF436369),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(data[index]['image']!),
                                  SizedBox(width: 12.w),
                                  Text(
                                    data[index]['text']!,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                SizedBox(
                  height: 189.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Your Top Mixes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ...List.generate(
                              3,
                              (index) => Container(
                                margin: EdgeInsets.only(right: 30.w),
                                height: 150.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(mixData[index]['image']!),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: Image.asset(
                                          'assets/images/Ellipse 9.png'),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 25,
                                      child: Text(
                                        mixData[index]['text']!,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      right: 0,
                                      child: Image.asset(
                                          'assets/images/Ellipse 10.png'),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        height: 10.h,
                                        width: 170.w,
                                        decoration: BoxDecoration(
                                            color: mixData[index]['color']!),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //
                //
                SizedBox(height: 20.h),
                SizedBox(
                  height: 227.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Based on your recent listening',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12.5.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              baseData.length,
                              (index) => Container(
                                margin: EdgeInsets.only(right: 30.w),
                                height: 181.h,
                                width: 182.w,
                                child: Image.asset(baseData[index]['image']!),
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
          ),
        ),
      ),
    );
  }
}
