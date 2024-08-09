import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class ArtistsDesc extends StatelessWidget {
  const ArtistsDesc({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> playlistData = [
      {
        'image': 'assets/images/image 6 (3).png',
        'name': 'Conan gray',
        'subName': 'Conan gray',
      },
      {
        'image': 'assets/images/image 7 (1).png',
        'name': 'Chase Atlantic',
        'subName': 'DAWN FM',
      },
      {
        'image': 'assets/images/Rectangle 30 (3).png',
        'name': 'beabadoobee',
        'subName': 'doja cat',
      },
      {
        'image': 'assets/images/image 4 (2).png',
        'name': 'New Jeans',
        'subName': 'Traye Sivan',
      },
      {
        'image': 'assets/images/image 5.png',
        'name': 'Keshi',
        'subName': 'The neighbourhood',
      },
      {
        'image': 'assets/images/image 6 (3).png',
        'name': 'Keshi',
        'subName': 'The neighbourhood',
      },
    ];
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: SizedBox(
              height: 100.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort By',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Recently Played',
                        style: TextStyle(color: bolor1),
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(
                        'assets/images/sort.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //
          Column(
            children: [
              ...List.generate(
                playlistData.length,
                (index) => Container(
                  margin: EdgeInsets.only(bottom: 30.h),
                  height: 82.h,
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      playlistData[index]['name']!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      height: 100.h,
                      width: 100.w,
                      child: Image.asset(
                        playlistData[index]['image']!,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
