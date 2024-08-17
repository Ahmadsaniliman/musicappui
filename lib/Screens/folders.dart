import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/folder1.dart';
import 'package:musicapp/Util/colors.dart';

class FoldersDesc extends StatelessWidget {
  const FoldersDesc({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> folderData = [
      {
        'name': 'Moods',
        'num': '11 Paylists',
      },
      {
        'name': 'Blends',
        'num': '8 Paylists',
      },
      {
        'name': 'Favs',
        'num': '14 Paylists',
      },
      {
        'name': 'Random ?',
        'num': '18 Paylists',
      }
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 20.w),
          child: SizedBox(
            height: 140.5.h,
            width: 280.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF00C2CB),
                      ),
                      child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    const Text(
                      'Add New Playlist',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const Text(
                      'Your Liked Songs',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
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
              folderData.length,
              (index) => InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const FolderDetailsScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  height: 82.h,
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      folderData[index]['name']!,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      folderData[index]['num']!,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    leading: SizedBox(
                      height: 82.h,
                      width: 84.w,
                      child: Image.asset(
                        'assets/images/Rectangle 30 (8).png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
