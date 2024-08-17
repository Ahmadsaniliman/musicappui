import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/explore_page.dart';
import 'package:musicapp/Screens/home_page.dart';
import 'package:musicapp/Screens/library.dart';
import 'package:musicapp/Screens/song_screen.dart';
import 'package:musicapp/Util/colors.dart';

class PlayListSongsAndPlayerScreen extends StatefulWidget {
  const PlayListSongsAndPlayerScreen({super.key});

  @override
  State<PlayListSongsAndPlayerScreen> createState() =>
      _PlayListSongsAndPlayerScreenState();
}

class _PlayListSongsAndPlayerScreenState
    extends State<PlayListSongsAndPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedOne = 2;
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, left: 20.w, right: 20.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'FROM “PLAYLISTS”',
                  style: TextStyle(color: Colors.white, fontSize: 15.h),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 35.h),
              child: Column(
                children: [
                  Container(
                    height: 252.h,
                    width: 263.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('assets/images/Rectangle 18 (1).png'),
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    'Lofi Loft',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'soft, chill, dreamy, lo-fi beats',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            //
            //
            SizedBox(
              height: 362.5.h,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      playLIstData2.length,
                      (index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const SongScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          height: 52.h,
                          width: double.infinity,
                          child: ListTile(
                            trailing: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            leading: SizedBox(
                              height: 52.h,
                              width: 53.w,
                              child:
                                  Image.asset(playLIstData2[index]['image']!),
                            ),
                            title: Text(
                              playLIstData2[index]['name']!,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              playLIstData2[index]['subName']!,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
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
    );
  }

  final List<Map<String, String>> playLIstData2 = [
    {
      'image': 'assets/images/Rectangle 30 (21).png',
      'name': 'grainy days',
      'subName': 'moody',
    },
    {
      'image': 'assets/images/Rectangle 30 (22).png',
      'name': 'Coffee',
      'subName': 'kainbeats',
    },
    {
      'image': 'assets/images/Rectangle 30 (23).png',
      'name': 'Rain drops',
      'subName': 'rainyyxx',
    },
    {
      'image': 'assets/images/Rectangle 30 (24).png',
      'name': 'Tokyo',
      'subName': 'Sm jang',
    },
    {
      'image': 'assets/images/Rectangle 30 (22).png',
      'name': 'Lullaby',
      'subName': 'iamfinenow',
    },
    {
      'image': 'assets/images/Rectangle 30 (25).png',
      'name': 'Hazel Eyes',
      'subName': 'moddy',
    },
  ];
}
