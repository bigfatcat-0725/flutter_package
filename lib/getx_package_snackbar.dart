import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXPackageSnackbar extends StatelessWidget {
  const GetXPackageSnackbar({Key? key}) : super(key: key);

  void openSnackbar() {
    Future.delayed(Duration(seconds: 1), () {
      print(Get.isSnackbarOpen);
    });

    Get.snackbar(
      'Snackbar',
      'This is a snackbar',
      snackPosition: SnackPosition.BOTTOM,
      forwardAnimationCurve: Curves.elasticInOut,
      reverseAnimationCurve: Curves.easeOut,
      duration: Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetXPackageSnackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                openSnackbar();
              },
              child: Text('Get Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
