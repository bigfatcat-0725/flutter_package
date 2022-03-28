import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';

class InAppReviewTest extends StatelessWidget {
  const InAppReviewTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                final InAppReview inAppReview = InAppReview.instance;

                if (await inAppReview.isAvailable()) {
                  inAppReview.requestReview();
                }
              },
              child: Text('in-app-review'),
            ),
          ],
        ),
      ),
    );
  }
}
