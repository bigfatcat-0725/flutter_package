import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXPackageDialog extends StatelessWidget {
  const GetXPackageDialog({Key? key}) : super(key: key);

  void openDialog() {
    Future.delayed(Duration(seconds: 1), () {
      print(Get.isDialogOpen);
    });

    Get.dialog(AlertDialog(
      title: Text('Dialog'),
      content: Text('This is a Dialog'),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Text('Close'),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetXPackageDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: openDialog,
              child: Text('Open Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
