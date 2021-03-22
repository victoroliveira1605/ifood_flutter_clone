import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_flutter_clone/views/tabs/tabs.dart';
import 'views/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark, statusBarColor: Colors.white));
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MaterialApp(
            initialRoute: '/',
            routes: {
              '/': (BuildContext context) => SplashPage(),
              '/tab': (BuildContext context) => TabScreen(),
            },
            title: 'IFood Flutter Clone',
            debugShowCheckedModeBanner: false,
          )));
}
