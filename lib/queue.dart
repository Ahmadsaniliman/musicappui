import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicapp/Util/colors.dart';

class QueueScreen extends StatefulWidget {
  const QueueScreen({super.key});

  @override
  State<QueueScreen> createState() => _QueueScreenState();
}

class _QueueScreenState extends State<QueueScreen> {
  int selectedQueue = 0;
  int selectedQueue1 = 0;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> nextData = [
      {
        'text': 'Beguille',
        'subText': 'NIKI',
      },
      {
        'text': 'Stardust',
        'subText': 'Nyx',
      },
      {
        'text': 'Forever',
        'subText': 'moody',
      },
    ];
    final List<Map<String, String>> nextData1 = [
      {
        'text': 'Coffee',
        'subText': 'Kainbeats',
      },
      {
        'text': 'Raindrops',
        'subText': 'rainyyxx',
      },
      {
        'text': 'Tokyo',
        'subText': 'Sm yang',
      },
      {
        'text': 'Lullaby',
        'subText': 'iamfinenow',
      },
      {
        'text': 'HAZEL EYES',
        'subText': 'moody',
      },
      {
        'text': 'Coffee',
        'subText': 'Kainbeats',
      },
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        height: 50.h,
        width: double.infinity,
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'REMOVE',
              style: TextStyle(color: bolor1),
            ),
             Text(
              'ADD TO QUEUE',
              style: TextStyle(color: bolor1),
            ),
          ],
        ),
      ),
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 70.h,
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLAYING FROM PLAYLIST',
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        'Lofi Lofti',
                        style: TextStyle(color: bolor1),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: const Text(
                  'now playing :',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              //
              SizedBox(
                height: 52.h,
                width: 328.w,
                child: Row(
                  children: [
                    SizedBox(
                      height: 52.h,
                      width: 53.w,
                      child: Image.asset('assets/images/Rectangle 30 (21).png'),
                    ),
                    SizedBox(width: 15.w),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'grainy days',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'moody',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //
              //
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'next in the queue :',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                    height: 28.h,
                    width: 99.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: bolor1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'CLEAR QUEUE',
                        style: TextStyle(color: bolor1, fontSize: 10),
                      ),
                    ),
                  )
                ],
              ), //
              //
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 25.h),
                child: SizedBox(
                  height: 170.h,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        3,
                        (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedQueue = index;
                                    });
                                  },
                                  child: Container(
                                    height: 20.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        color: selectedQueue == index
                                            ? bolor1
                                            : null,
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      nextData[index]['text']!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      nextData[index]['subText']!,
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Image.asset('assets/images/add (1).png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              const Text(
                'next in Lofi Lofti :',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 25.h),
              SizedBox(
                height: 348.h,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        nextData1.length,
                        (index) => Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedQueue1 = index;
                                      });
                                    },
                                    child: Container(
                                      height: 20.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          shape: BoxShape.circle,
                                          color: selectedQueue1 == index
                                              ? bolor1
                                              : null),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        nextData1[index]['text']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        nextData1[index]['subText']!,
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset('assets/images/add (1).png'),
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
      ),
    );
  }
}
