import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jie_demo/pages/auth/auth_page.dart';
import './pages/home/home_page.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(JieApp());
}

class JieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JIE Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: AuthPage(),
      home: HomePage(),
    );
  }
}
