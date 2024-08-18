import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/library.dart';
import 'package:musicapp/Util/colors.dart';
import 'package:musicapp/create_new_play_list.dart';

class AddToPlayListScreen extends StatelessWidget {
  const AddToPlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> addToPlaylistData = [
      {
        'image': 'assets/images/Rectangle 30 (26).png',
        'name': 'current favorites',
        'subName': '20 songs',
      },
      {
        'image': 'assets/images/image 15 (1).png',
        'name': '3:00am vibes',
        'subName': '18 songs',
      },
      {
        'image': 'assets/images/Rectangle 30 (11).png',
        'name': 'Planet Her',
        'subName': 'doja cat',
      },
      {
        'image': 'assets/images/Rectangle 30 (27).png',
        'name': 'Lofi Loft',
        'subName': '63 songs',
      },
      {
        'image': 'assets/images/image 14 (1).png',
        'name': 'rain on my window',
        'subName': '32 songs',
      },
      {
        'image': 'assets/images/Rectangle 30 (28).png',
        'name': 'Anime OSTs',
        'subName': '20 songs',
      },
    ];
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const LibraryPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Add to Playlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Container(),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const CreateNewPlayList(),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  height: 59.h,
                  width: 204.w,
                  decoration: BoxDecoration(
                      color: bolor1,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: bolor1,
                        ),
                      ]),
                  child: const Center(
                    child: Text(
                      'New Playlist',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 44.h,
              width: 364.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 4.h),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Find playlist',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 608.h,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      addToPlaylistData.length,
                      (index) => Container(
                        margin: EdgeInsets.only(bottom: 30.h),
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 82.h,
                              width: 84.w,
                              child: Image.asset(
                                  addToPlaylistData[index]['image']!),
                            ),
                            SizedBox(width: 30.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.h),
                                Text(
                                  addToPlaylistData[index]['name']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  addToPlaylistData[index]['subName']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
