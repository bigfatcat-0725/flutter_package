import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXPackageLocal extends StatelessWidget {
  const GetXPackageLocal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetXPackageLocal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('greeting'.tr),
            OutlinedButton(
              onPressed: () {
                Get.updateLocale(Locale('ko', 'KR'));
              },
              child: Text('Korean'),
            ),
          ],
        ),
      ),
    );
  }
}
