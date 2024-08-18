import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Screens/song_screen.dart';
import 'package:musicapp/Util/colors.dart';

class EqaulizerScreen extends StatefulWidget {
  const EqaulizerScreen({super.key});

  @override
  State<EqaulizerScreen> createState() => _EqaulizerScreenState();
}

class _EqaulizerScreenState extends State<EqaulizerScreen> {
  int selectedOne = 0;
  @override
  Widget build(BuildContext context) {
    final List cat = ['Custom', 'Normal', 'Pop', 'Classic', 'Heavy Music'];
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const SongScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 60.w),
                const Text(
                  'Eqaulizer',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),

            ///
            ///
            Padding(
              padding: EdgeInsets.symmetric(vertical: 35.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 40.h,
                width: 339.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 0.5),
                ),
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.w),
                        const Text(
                          'BUILT IN SPEAKER',
                          style: TextStyle(color: bolor1),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_circle_down_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'PRESETS',
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: SizedBox(
                height: 30.h,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedOne = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 20.w),
                            padding: REdgeInsets.symmetric(horizontal: 10),
                            height: 28,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                              color: selectedOne == index ? bolor1 : null,
                            ),
                            child: Center(
                              child: Text(
                                cat[index],
                                style: TextStyle(
                                  color: selectedOne == index
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 40.h),
              child: SizedBox(
                height: 296.5.h,
                width: double.infinity,
                child: Image.asset('assets/images/sliders.png'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: SizedBox(
                height: 178.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 148.h,
                          width: 148.w,
                          child: Stack(
                            children: [
                              Image.asset('assets/images/Ellipse 6.png'),
                              Center(
                                  child: Image.asset(
                                      'assets/images/Ellipse 7.png')),
                              Positioned(
                                  top: 50.h,
                                  right: 40,
                                  child: Image.asset(
                                      'assets/images/Ellipse 8.png')),
                            ],
                          ),
                        ),
                        const Text(
                          'Bass Boast 23%',
                          style: TextStyle(color: bolor1),
                        )
                      ],
                    ), //
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 148.h,
                          width: 148.w,
                          child: Stack(
                            children: [
                              Image.asset('assets/images/Ellipse 6.png'),
                              Center(
                                  child: Image.asset(
                                      'assets/images/Ellipse 7.png')),
                              Positioned(
                                  bottom: 50.h,
                                  left: 40,
                                  child: Image.asset(
                                      'assets/images/Ellipse 8.png')),
                            ],
                          ),
                        ),
                        const Text(
                          '3D Effect : 69%',
                          style: TextStyle(color: bolor1),
                        )
                      ],
                    ), //
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
