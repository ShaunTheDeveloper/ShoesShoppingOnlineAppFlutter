import 'package:flutter/material.dart';
import 'package:shoes_online_app/Theme/ThemeConfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeConfig().ThemApp,
        home: const Directionality(
          textDirection: TextDirection.rtl,
          child: MainScreen(),
        ));
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("فروشگاه کفش نایک"),
            Text('فروشگاه کفش نایک',style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}
