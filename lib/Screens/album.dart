import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class AlbumDesc extends StatelessWidget {
  const AlbumDesc({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> playlistData = [
      {
        'image': 'assets/images/Rectangle 30 (9).png',
        'name': 'Superache',
        'subName': 'Conan gray',
      },
      {
        'image': 'assets/images/Rectangle 30 (10).png',
        'name': 'DAWN FM',
        'subName': 'The Weekend',
      },
      {
        'image': 'assets/images/Rectangle 30 (11).png',
        'name': 'Planet Her',
        'subName': 'doja cat',
      },
      {
        'image': 'assets/images/Rectangle 30 (12).png',
        'name': 'Wiped Out!',
        'subName': 'The neighbourhood',
      },
      {
        'image': 'assets/images/Rectangle 30 (13).png',
        'name': 'Bloom',
        'subName': 'Traye Sivan',
      },
    ];
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              height: 140.5.h,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 56.h,
                    width: 56.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF00C2CB),
                    ),
                    child: const Center(child: Icon(Icons.favorite_outline)),
                  ),
                  SizedBox(width: 20.w),
                  const Text(
                    'Your Liked Albums',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          //
          //
          Padding(
            padding: EdgeInsets.only(bottom: 30.h, left: 20.w, right: 20.w),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/sort.png',
                  color: bolor1,
                ),
                SizedBox(width: 10.w),
                const Text(
                  'Recently Played',
                  style: TextStyle(color: bolor1),
                ),
              ],
            ),
          ),
          //
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
                    subtitle: Text(
                      playlistData[index]['subName']!,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    leading: SizedBox(
                      height: 82.h,
                      width: 84.w,
                      child: Image.asset(
                        playlistData[index]['image']!,
                        fit: BoxFit.contain,
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
