import 'package:flavor_mode/main.dart';
import 'package:flavor_mode/utils/flavor_config.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig(
    type: FlavorType.production,
    color: Colors.blue,
    values: const FlavorValues(
      title: "Production App",
    ),
  );

  runApp(const MyApp());
}
