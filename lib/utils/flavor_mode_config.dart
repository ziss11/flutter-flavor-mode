import 'package:flutter/foundation.dart';

class FlavorModeConfig {
  static bool get isDebug => kDebugMode;

  static bool get isProfile => kProfileMode;

  static bool get isRelease => kReleaseMode;

  static String get flutterMode => isDebug
      ? "Debug"
      : isProfile
          ? "Profile"
          : "Release";
}
