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
              //color: Colors.black45,
            ),
          ),
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
        ],
      ),
    );
  }
}
