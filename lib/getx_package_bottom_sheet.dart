import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXPackageBottomSheet extends StatelessWidget {
  const GetXPackageBottomSheet({Key? key}) : super(key: key);

  void openBottomSheet() {
    Future.delayed(Duration(seconds: 1), () {
      print(Get.isBottomSheetOpen);
    });

    Get.bottomSheet(
      Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Bottom Sheet',
              style: TextStyle(fontSize: 18),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('close'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetXPackageBottomSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bottom sheet example'),
            OutlinedButton(
              onPressed: openBottomSheet,
              child: Text('Open'),
            ),
          ],
        ),
      ),
    );
  }
}
