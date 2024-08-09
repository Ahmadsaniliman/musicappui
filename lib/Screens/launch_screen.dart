import 'package:flutter/material.dart';
import 'package:musicapp/Screens/welcome.dart';
import 'package:musicapp/Util/colors.dart';

class LuanchScreen extends StatefulWidget {
  const LuanchScreen({super.key});

  @override
  State<LuanchScreen> createState() => _LuanchScreenState();
}

class _LuanchScreenState extends State<LuanchScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  void navigate() {
    Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 150,
        ),
        child: SizedBox(
          height: 337,
          width: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Image.asset('assets/images/musium logo.png'),
              ),
              Positioned(
                bottom: 0,
                left: 100,
                child: Center(
                  child: Image.asset('assets/images/musium.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
