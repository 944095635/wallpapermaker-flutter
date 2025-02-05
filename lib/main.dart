import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wallpaper_maker/pages/frame/frame_page.dart';
import 'package:wallpaper_maker/pages/splash/splash_page.dart';
import 'package:wallpaper_maker/values/fonts.dart';
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
      windowButtonVisibility: false,//隐藏系统按钮 MacOS
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
      title: 'Wallpaper Maker',

      // 白色主题
      theme: ThemeData(
        fontFamily: Fonts.fontYuFaXinYu,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),

      // 黑色主题
      darkTheme: ThemeData(
        fontFamily: Fonts.fontYuFaXinYu,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
