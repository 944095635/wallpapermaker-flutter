import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:wallpaper_maker/pages/frame/frame_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInUp(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeOutLeft(
                animate: true,
                delay: Duration(milliseconds: 2000),
                duration: Duration(milliseconds: 1000),
                child: Text(
                  "造",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutUp(
                animate: true,
                delay: Duration(milliseconds: 2000),
                duration: Duration(milliseconds: 1000),
                child: Text(
                  "物",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutDown(
                animate: true,
                delay: Duration(milliseconds: 2000),
                duration: Duration(milliseconds: 2000),
                child: Text(
                  "主",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutUp(
                animate: true,
                delay: Duration(milliseconds: 2000),
                duration: Duration(milliseconds: 1000),
                child: Text(
                  "壁",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutRight(
                animate: true,
                delay: Duration(milliseconds: 2000),
                duration: Duration(milliseconds: 1000),
                onFinish: (direction) {
                  Get.to(() => FramePage());
                },
                child: Text(
                  "纸",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
