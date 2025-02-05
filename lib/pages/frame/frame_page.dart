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
    return Scaffold(
      body: HomePage(),
    );
  }
}

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