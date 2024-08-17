import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/explore_page.dart';
import 'package:musicapp/Screens/home_page.dart';
import 'package:musicapp/Screens/library.dart';
import 'package:musicapp/Screens/play_list_songs_and_player.dart';
import 'package:musicapp/Util/colors.dart';

class FolderDetailsScreen extends StatefulWidget {
  const FolderDetailsScreen({super.key});

  @override
  State<FolderDetailsScreen> createState() => _FolderDetailsScreenState();
}

class _FolderDetailsScreenState extends State<FolderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedOne = 2;
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
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.only(top: 80.h, left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
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
                  SizedBox(width: 20.w),
                  Text(
                    'Moods',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.h,
                    ),
                  ),
                ],
              ),
              //
              //
              SizedBox(
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
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF00C2CB),
                      ),
                      child: const Center(child: Icon(Icons.plus_one)),
                    ),
                    SizedBox(width: 20.w),
                    const Text(
                      'Add New Playlists',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              //
              //
              //
              SizedBox(height: 20.h),
              Column(
                children: [
                  ...List.generate(
                      playlistData.length,
                      (index) => InkWell(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PlayListSongsAndPlayerScreen(),
                                ),
                                (route) => false,
                              );
                            },
                            child: Container(
                                margin: EdgeInsets.only(bottom: 25.h),
                                padding: EdgeInsets.only(top: 15.h),
                                height: 100.h,
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
                                  leading: Container(
                                    height: 82.h,
                                    width: 84.w,
                                    child: Image.asset(
                                        playlistData[index]['image']!),
                                  ),
                                )),
                          )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, String>> playlistData = [
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
}
