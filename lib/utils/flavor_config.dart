import 'package:flutter/material.dart';

enum FlavorType {
  development,
  production,
}

class FlavorValues {
  final String title;

  const FlavorValues({
    this.title = "Development App",
  });
}

class FlavorConfig {
  final FlavorType type;
  final MaterialColor color;
  final FlavorValues values;

  static FlavorConfig? _instance;

  FlavorConfig({
    this.type = FlavorType.development,
    this.color = Colors.orange,
    this.values = const FlavorValues(),
  }) {
    _instance = this;
  }

  static FlavorConfig get instance => _instance ?? FlavorConfig();
}
