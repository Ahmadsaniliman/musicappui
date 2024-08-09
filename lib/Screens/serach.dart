import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> searchData = [
      {
        'image': 'assets/images/image 6 (2).png',
        'name': 'Conan Gray',
        'subName': '',
      },
      {
        'image': 'assets/images/Rectangle 30 (10).png',
        'name': 'DAWN FM',
        'subName': 'The Weekend',
      },
      {
        'image': 'assets/images/Rectangle 30 (4).png',
        'name': 'Water Fountain',
        'subName': 'alec benjamin',
      },
      {
        'image': 'assets/images/Rectangle 30 (2).png',
        'name': 'Wiped Out!',
        'subName': 'The Neighbourhood',
      },
      {
        'image': 'assets/images/Rectangle 30 (16).png',
        'name': 'Baking a Mystery',
        'subName': 'Updated Aug 21• Stephanie Soo',
      },
      {
        'image': 'assets/images/image 5.png',
        'name': 'Keshi',
        'subName': '',
      },
    ];
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.only(top: 66.h, left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 20),
                child: Container(
                  height: 40.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 15.w),
                        border: InputBorder.none,
                        hintText: 'Browse Library',
                        hintStyle: const TextStyle(color: Colors.grey),
                        suffixIcon:
                            const Icon(Icons.search, color: Colors.white)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/sort.png',
                    ),
                    SizedBox(width: 10.w),
                    const Text(
                      'Recently Played',
                      style: TextStyle(color: bolor1),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Column(
                children: [
                  ...List.generate(
                    searchData.length,
                    (index) => Container(
                      margin: EdgeInsets.only(bottom: 30.h),
                      height: 85.h,
                      width: double.infinity,
                      child: ListTile(
                        leading: Image.asset(searchData[index]['image']!),
                        title: Text(
                          searchData[index]['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          searchData[index]['subName']!,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
