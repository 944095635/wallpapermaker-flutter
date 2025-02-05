import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
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
                delay: Duration(milliseconds: 1700),
                duration: Duration(milliseconds: 1500),
                child: Text(
                  "造",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutUp(
                animate: true,
                delay: Duration(milliseconds: 1800),
                duration: Duration(milliseconds: 2000),
                child: Text(
                  "物",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutDown(
                animate: true,
                delay: Duration(milliseconds: 1900),
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
                delay: Duration(milliseconds: 2100),
                duration: Duration(milliseconds: 2000),
                child: Text(
                  "壁",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              FadeOutRight(
                animate: true,
                delay: Duration(milliseconds: 2300),
                duration: Duration(milliseconds: 1000),
                onFinish: (direction) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return FramePage();
                      },
                    ),
                  );
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
