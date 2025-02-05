import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_maker/widgets/blur_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/nami.jpg",
            fit: BoxFit.cover,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),

          // 放置页标组件
          CupertinoActivityIndicator(),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlurWidget(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text("英雄联盟"),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                BlurWidgetEx(
                  backgroundColor: Colors.white38,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text("英雄联盟"),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "造物主壁纸",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  "造物主壁纸",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
