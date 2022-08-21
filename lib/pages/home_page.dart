import 'package:flavor_mode/utils/flavor_config.dart';
import 'package:flavor_mode/utils/flavor_mode_config.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          FlavorConfig.instance.values.title,
        ),
      ),
      body: SafeArea(
        child: FutureBuilder<PackageInfo>(
          future: PackageInfo.fromPlatform(),
          builder: (context, snapshot) {
            final info = snapshot.data;

            if (!snapshot.hasData) return const SizedBox();

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Belajar Flutter Flavor dan Flutter Mode",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
                const Divider(
                  height: 32,
                  thickness: 3,
                ),
                Text(
                  "Flavor: ${FlavorConfig.instance.type.name}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
                Text(
                  "Mode: ${FlavorModeConfig.flutterMode}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
                const Divider(
                  height: 32,
                  thickness: 3,
                ),
                Text(
                  "AppName: ${info?.appName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
                Text(
                  "PackageName: ${info?.packageName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
                Text(
                  "Version: ${info?.version}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
