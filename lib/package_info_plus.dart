import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoPlus extends StatelessWidget {
  const PackageInfoPlus({Key? key}) : super(key: key);

  Future<PackageInfo> _getPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Info Plus'),
      ),
      body: Center(
        child: FutureBuilder<PackageInfo>(
          future: _getPackageInfo(),
          builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
            if (snapshot.hasError) {
              return Text('Error');
            } else if (!snapshot.hasData) {
              return Text('Loading...');
            }

            final data = snapshot.data!;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('App Name: ${data.appName}'),
                Text('Package Name: ${data.packageName}'),
                Text('Version: ${data.version}'),
                Text('Build Number: ${data.buildNumber}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
