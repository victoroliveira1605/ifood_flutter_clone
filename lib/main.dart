import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_flutter_clone/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark, statusBarColor: Colors.white));
  runApp(App());
}
