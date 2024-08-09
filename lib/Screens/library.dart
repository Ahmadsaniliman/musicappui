import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/album.dart';
import 'package:musicapp/Screens/artist.dart';
import 'package:musicapp/Screens/explore_page.dart';
import 'package:musicapp/Screens/folders.dart';
import 'package:musicapp/Screens/playlist.dart';
import 'package:musicapp/Screens/home_page.dart';
import 'package:musicapp/Screens/podcast.dart';
import 'package:musicapp/Util/colors.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<dynamic, dynamic>> recentData1 = [
      {
        'image': 'assets/images/image 6 (2).png',
        'name': 'Conan Gray',
        'subName': '',
      },
      {
        'image': 'assets/images/image 15 (2).png',
        'name': '3:00am vibes',
        'subName': '18 songs',
      },
      {
        'image': 'assets/images/Rectangle 30 (2).png',
        'name': 'Wiped Out!',
        'subName': 'The Neighbourhood',
      },
      {
        'image': 'assets/images/Rectangle 30 (9).png',
        'name': 'Extra Dynamic',
        'subName': 'Updating 10 Aug, ur mom ashley',
      },
    ];
    final List categoryList = [
      Description(recentData: recentData1),
      const FoldersDesc(),
      const PlaylistDesc(),
      const ArtistsDesc(),
      const AlbumDesc(),
      const PodcastDesc()
    ];
    int selectedOne = 2;
    final categories = [
      'Folders',
      'Playlist',
      'Artist',
      'Album',
      'Podcast & Shows',
    ];

    int? selectedIndex;
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
      backgroundColor: defaultColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: blackColor,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 48.h,
                          width: 63.w,
                          child:
                              Image.asset('assets/images/musium logo (2).png'),
                        ),
                        SizedBox(width: 15.w),
                        const Text(
                          'Your Library',
                          style: TextStyle(
                            color: bolor1,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: SizedBox(
                  height: 30.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          categories.length,
                          (index) => InkWell(
                            onTap: () {
                              setState(() {
                                index == selectedIndex;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10.w),
                              padding: EdgeInsets.symmetric(horizontal: 7.w),
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: selectedIndex == index ? bolor1 : null,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                categories[index],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 696.h,
                width: double.infinity,
                color: blackColor,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      
                    });
                  },
                  itemCount: categories.length,
                  itemBuilder: (context, index) => categoryList[index],
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.recentData,
  });

  final List<Map<dynamic, dynamic>> recentData;

  @override
  Widget build(BuildContext context) {
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
              recentData.length,
              (index) => Container(
                margin: EdgeInsets.only(bottom: 20.h),
                height: 82.h,
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    recentData[index]['name']!,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    recentData[index]['subName']!,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  leading: SizedBox(
                    height: 82.h,
                    width: 84.w,
                    child: Image.asset(
                      recentData[index]['image']!,
                      fit: BoxFit.contain,
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
