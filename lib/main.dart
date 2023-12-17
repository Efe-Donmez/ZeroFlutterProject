import 'package:clicker/core/theme/theme.dart';
import 'package:clicker/router/page.dart';
import 'package:clicker/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: false,
      title: 'Clicker',
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MainPage(child: child?? const SizedBox.shrink());
      },
      initialRoute: AppRoute.home,
      routes: AppRoute.routes,
      theme: AppTheme().lightTheme,
      themeMode: AppTheme.themeMode,
    );
  }
}