import 'package:animations/animations.dart';
import 'package:drone/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'home_page_sceen.dart';
import 'services/model_one.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(InventoryAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeThroughPageTransitionsBuilder(),
            TargetPlatform.iOS: FadeThroughPageTransitionsBuilder(),
          },
        ),
      ),
      home: HomePageScreen(),
    );
  }
}
