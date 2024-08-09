import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class PodcastDesc extends StatelessWidget {
  const PodcastDesc({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> playlistData = [
      {
        'image': 'assets/images/Rectangle 30 (14).png',
        'name': 'Anything Goes',
        'subName': 'Updated Aug 31 • Emma Chamberlain',
      },
      {
        'image': 'assets/images/Rectangle 30 (15).png',
        'name': 'Ask Me Another',
        'subName': 'Updated Aug 18 • NPR Studios',
      },
      {
        'image': 'assets/images/Rectangle 30 (16).png',
        'name': 'Baking a Mystery',
        'subName': 'Updated Aug 21• Stephanie Soo',
      },
      {
        'image': 'assets/images/Rectangle 30 (19).png',
        'name': 'Extra Dynamic',
        'subName': 'Updated Aug 10 • ur mom ashley',
      },
      {
        'image': 'assets/images/Rectangle 30 (18).png',
        'name': 'Teenager Therapy',
        'subName': 'Updated Aug 21• iHeart Studios',
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
                    'Your Liked Podcasts',
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
                ),
                SizedBox(width: 10.w),
                const Text(
                  'A - Z',
                  style: TextStyle(color: bolor1, fontWeight: FontWeight.bold),
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
