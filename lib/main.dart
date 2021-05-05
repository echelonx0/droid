import 'dart:io';
import 'package:drone/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

import 'package:hive_flutter/hive_flutter.dart';

import 'demos/demo.dart';
import 'services/model_one.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  // Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  // Hive.init(directory.path);

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
      ),
      // home: MyDemo(),
      home: HomeScreen(),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'extended_tabs demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: Routes.fluttercandiesMainpage,
//       onGenerateRoute: (RouteSettings settings) {
//         return onGenerateRoute(
//           settings: settings,
//           getRouteSettings: getRouteSettings,
//           routeSettingsWrapper: (FFRouteSettings ffRouteSettings) {
//             if (ffRouteSettings.name == Routes.fluttercandiesMainpage ||
//                 ffRouteSettings.name == Routes.fluttercandiesDemogrouppage) {
//               return ffRouteSettings;
//             }
//             return ffRouteSettings.copyWith(
//                 widget: CommonWidget(
//               child: ffRouteSettings.widget,
//               title: ffRouteSettings.routeName,
//             ));
//           },
//         );
//       },
//     );
//   }
// }

// class CommonWidget extends StatelessWidget {
//   const CommonWidget({
//     this.child,
//     this.title,
//   });
//   final Widget? child;
//   final String? title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           title!,
//         ),
//       ),
//       body: child,
//     );
//   }
// }
