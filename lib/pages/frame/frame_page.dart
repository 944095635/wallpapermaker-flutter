import 'package:flutter/material.dart';
import 'package:wallpaper_maker/pages/home/home_page.dart';

class FramePage extends StatefulWidget {
  const FramePage({super.key});

  @override
  State<FramePage> createState() => _FramePageState();
}

class _FramePageState extends State<FramePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        HomePage(),

        /// 菜单导航栏
        Positioned(
          top: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("推荐"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("本地"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("设置"),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// 菜单项 ： 推荐 本地 设置

// body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             BlurWidget(
//               child: Row(
//                 children: [
//                   Text("XXX"),
//                 ],
//               ),
//             ),

//              BlurWidgetEx(
//               hasTopBorder: true,
//               hasBottomBorder: true,
//               backgroundColor: Colors.white24,
//               child: Row(
//                 children: [
//                   Text("XXX"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
