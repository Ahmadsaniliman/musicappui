import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/home_page.dart';
import 'package:musicapp/Screens/library.dart';
import 'package:musicapp/Util/colors.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> genresData = [
      {
        'image': 'assets/images/image 4.png',
        'text': 'Kpop',
        'color': const Color(0xFF75C922),
      },
      {
        'image': 'assets/images/IMG_20210320_095814_254 1.png',
        'text': 'Indie',
        'color': const Color(0xFF6F259C),
      },
      {
        'image': 'assets/images/image 1 (2).png',
        'text': 'R & B',
        'color': const Color(0xFF4A558F),
      },
      {
        'image': 'assets/images/image 2.png',
        'text': 'Pop',
        'color': const Color(0xFFBD6220),
      },
    ];
    List<Map<String, dynamic>> allData = [
      {
        'image': 'assets/images/image 10 (6).png',
        'text': 'Made for you',
        'color': const Color(0xFF1E82AC),
      },
      {
        'image': 'assets/images/image 8 (3).png',
        'text': 'RELEASED',
        'color': const Color(0xFF76259C),
      },
      {
        'image': 'assets/images/image 11 (1).png',
        'text': 'Charts',
        'color': const Color(0xFF25319C),
      },
      {
        'image': 'assets/images/image 12 (2).png',
        'text': 'Podcasts',
        'color': const Color(0xFFBD6220),
      },
      {
        'image': 'assets/images/image 13 (1).png',
        'text': 'Bollywood',
        'color': const Color(0xFF9C7425),
      },
      {
        'image': 'assets/images/IMG_20210320_095814_254 1 (1).png',
        'text': 'Pop Fusion',
        'color': const Color(0xFF479775),
      },
    ];
     int selectedOne = 1;
    return Scaffold(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 48.h,
                        width: 63.w,
                        child: Image.asset('assets/images/musium logo (2).png'),
                      ),
                      SizedBox(width: 15.w),
                      const Text(
                        'Search',
                        style: TextStyle(
                          color: bolor1,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ), //
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                      height: 44.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            'Songs, Artists, Podcasts & More',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                  //
                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Your Top Genres',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 209.h,
                        width: double.infinity,
                        child: Wrap(
                          spacing: 20.w,
                          runSpacing: 20.h,
                          children: [
                            ...List.generate(
                              (4),
                              (index) => Container(
                                height: 98.h,
                                width: 185.w,
                                decoration: BoxDecoration(
                                  color: genresData[index]['color']!,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      bottom: -4,
                                      child: Image.asset(
                                          genresData[index]['image']!),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        genresData[index]['text']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
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
                    ],
                  ),
              
                  //
                  //
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Browse All',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                          height: 325.h,
                          width: double.infinity,
                          child: Wrap(
                            spacing: 20.w,
                            runSpacing: 20.h,
                            children: [
                              ...List.generate(
                                allData.length,
                                (index) => Container(
                                  height: 98.h,
                                  width: 185.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: allData[index]['color'],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: 0,
                                        bottom: -4,
                                        child:
                                            Image.asset(allData[index]['image']!),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Text(
                                          allData[index]['text']!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
