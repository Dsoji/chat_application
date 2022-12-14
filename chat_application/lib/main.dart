// ignore_for_file: constant_identifier_names

import 'package:chat_application/appTheme.dart';
import 'package:chat_application/src/binding/initial_bindings.dart';
import 'package:chat_application/src/screens/dashboard.dart';
import 'package:chat_application/src/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: darkThemeData(context),
      theme: lightThemeData(context),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(name: Routes.SPLASH_SCREEN, page: () => const SplashScreen()),
        GetPage(name: Routes.DASHBAORD, page: () => const DashboardScreen()),
      ],
      initialRoute: Routes.SPLASH_SCREEN,
    );
  }
}

class Routes {
  static const String SPLASH_SCREEN = "/";
  static const String DATA = "/data";
  static const String DASHBAORD = "/dashboard";
}
