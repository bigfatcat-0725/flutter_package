import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXPackageInfo extends StatelessWidget {
  const GetXPackageInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('플랫폼 및 디바이스 정보'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GetPlatform.isAndroid : ${GetPlatform.isAndroid}'),
            Text('GetPlatform.isIOS : ${GetPlatform.isIOS}'),
            Text('GetPlatform.isMacOS : ${GetPlatform.isMacOS}'),
            Text('GetPlatform.isWindows : ${GetPlatform.isWindows}'),
            Text('GetPlatform.isLinux : ${GetPlatform.isLinux}'),
            Text('GetPlatform.isFuchsia : ${GetPlatform.isFuchsia}'),
            Divider(),
            Text('GetPlatform.isMobile : ${GetPlatform.isMobile}'),
            Text('GetPlatform.isDesktop : ${GetPlatform.isDesktop}'),
            Text('GetPlatform.isWeb : ${GetPlatform.isWeb}'),
            Divider(),
            Text('Get.height : ${Get.height}'),
            Text('Get.width : ${Get.width}'),
            Divider(),
            Text('context.height : ${context.height}'),
            Text('context.width : ${context.width}'),
            Text(
                'context.heightTransformer() : ${context.heightTransformer()}'),
            Text('context.widthTransformer() : ${context.widthTransformer()}'),
            Text('context.mediaQuerySize : ${context.mediaQuerySize}'),
            Text('context.mediaQueryPadding : ${context.mediaQueryPadding}'),
            Text(
                'context.mediaQueryViewPadding : ${context.mediaQueryViewPadding}'),
            Text(
                'context.mediaQueryViewInsets : ${context.mediaQueryViewInsets}'),
            Text('context.devicePixelRatio : ${context.devicePixelRatio}'),
            Divider(),
            Text('context.orientation : ${context.orientation}'),
            Text('context.isLandscape : ${context.isLandscape}'),
            Text('context.isPortrait : ${context.isPortrait}'),
            Divider(),
            Text('context.textScaleFactor : ${context.textScaleFactor}'),
            Divider(),
            Text('context.isPhone : ${context.isPhone}'),
            Text('context.isSmallTablet : ${context.isSmallTablet}'),
            Text('context.isLargeTablet : ${context.isLargeTablet}'),
            Text('context.isTablet : ${context.isTablet}'),
          ],
        ),
      ),
    );
  }
}
