import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wallpaper_maker/pages/frame/frame_page.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    await windowManager.ensureInitialized();
    WindowOptions windowOptions = WindowOptions(
      center: true,
      skipTaskbar: false,
      size: Size(1080, 680),
      minimumSize: Size(700, 500),
      titleBarStyle: TitleBarStyle.hidden,
      backgroundColor: Colors.transparent,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      // 无边框 await windowManager.setAsFrameless();
      await windowManager.show();
      await windowManager.focus();
    });
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 白色主题
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // 黑色主题
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const FramePage(),
    );
  }
}
