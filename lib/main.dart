import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

// Import other plugins as needed

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'kartikay_s_application7',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.androidLargeOneOneScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
