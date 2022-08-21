import 'package:flavor_mode/pages/home_page.dart';
import 'package:flavor_mode/utils/flavor_config.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FlavorConfig.instance.values.title,
      theme: ThemeData(
        primarySwatch: FlavorConfig.instance.color,
      ),
      home: const HomePage(),
    );
  }
}
