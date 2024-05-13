import 'package:flutter/material.dart';
import 'package:fast_delivery/src/home/page/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final String title = 'Fast Delivery';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: HomePage(key: UniqueKey(), homePageTitle: title,),
    );
  }
}
