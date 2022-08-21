import 'package:flavor_mode/main.dart';
import 'package:flavor_mode/utils/flavor_config.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig(
    type: FlavorType.development,
    color: Colors.orange,
    values: const FlavorValues(
      title: "Development App",
    ),
  );

  runApp(const MyApp());
}
