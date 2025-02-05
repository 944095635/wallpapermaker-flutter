import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;

  List images = [
    "http://dmskin.com/img/1.jpg",
    "http://dmskin.com/img/2.png",
    "http://dmskin.com/img/3.jpg",
    "http://dmskin.com/img/4.jpg",
    "http://dmskin.com/img/5.jpg",
    "http://dmskin.com/img/6.jpg",
    "http://dmskin.com/img/7.jpg",
    "http://dmskin.com/img/8.jpg",
    "http://dmskin.com/img/9.jpg",
    "http://dmskin.com/img/10.jpg",
    "http://dmskin.com/img/11.jpg",
    "http://dmskin.com/img/12.jpg",
    "http://dmskin.com/img/13.jpg",
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (PointerSignalEvent signal) {
        if (signal is PointerScrollEvent) {
          if (signal.scrollDelta.direction > 1) {
            controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          } else {
            controller.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }
        }
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            itemCount: images.length,
            controller: controller,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return FadeIn(
                duration: Duration(seconds: 1),
                child: CachedNetworkImage(
                  imageUrl: images[index],
                  memCacheWidth: 1920,
                  placeholder: (context, url) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: LinearProgressIndicator(),
                    );
                  },
                  fit: BoxFit.cover,
                ),
              );
            },
          ),

          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x88000000),
                  Color(0x33000000),
                  Color(0x00000000),
                ],
                stops: [0, .3, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "造物主壁纸",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),

          // 放置页标组件
          Positioned(
            top: 0,
            bottom: 0,
            right: 20,
            child: Center(
              child: SmoothPageIndicator(
                count: images.length,
                controller: controller,
                axisDirection: Axis.vertical,
                onDotClicked: (index) {
                  controller.jumpToPage(index);
                },
                effect: JumpingDotEffect(
                  dotHeight: 3,
                  dotColor: Colors.white24,
                  activeDotColor: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
