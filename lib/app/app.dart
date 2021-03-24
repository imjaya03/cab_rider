import 'package:cab_rider/app/screens/demo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      builder: (context, child) {
        return Container(
          color: Theme.of(context).primaryColor,
          child: SafeArea(
            child: child ?? Scaffold(),
          ),
        );
      },
      theme: _buildThemeData(),
      getPages: _buildGetPages(),
      initialRoute: DemoScreen.routeName,
      unknownRoute: GetPage(
        name: DemoScreen.routeName,
        page: () => DemoScreen(),
      ),
    );
  }

  List<GetPage> _buildGetPages() {
    return [
      GetPage(
        name: DemoScreen.routeName,
        page: () => DemoScreen(),
      ),
    ];
  }

  ThemeData _buildThemeData() {
    return ThemeData();
  }
}
