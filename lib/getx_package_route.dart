import 'package:flutter/material.dart';
import 'package:flutter_package/getx_package_dependency.dart';
import 'package:get/get.dart';

// main.dart
// home: GetXPackageRoute(),
// initialRoute: '/',
// getPages: [
//   GetPage(name: '/', page: () => MyHomePage()),
//   GetPage(name: '/first:id', page: () => First()),
// ],

class GetXPackageRoute extends StatelessWidget {
  const GetXPackageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(
                  GetXPackageDependency(),
                  arguments: '',
                  transition: Transition.zoom,
                  popGesture: false,
                );
              },
              child: Text('Next Screen'),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Text('Back'),
            ),
            // InkWell(
            //   onTap: () {
            //    Get.toNamed('/first/1?name=hello', arguments: {"hi" : "hello"});
            //    Get.parameters['id'] / Get.parameters['name']
            //    arguments 받는 것은 arguments 보내고 Get.arguments['hi] 로 받으면 됨.
            //   },
            //   child: Text('Named route'),
            // ),
          ],
        ),
      ),
    );
  }
}

// 추가 정리
// Get.until 주어진 조건을 만족하는 화면까지 화면을 제거.
// Get.off 현재 화면을 제거하고, 새로운 화면을 추가.
// Get.offNamed 이름 있는 라우트를 사용하여 현재 화면을 제거하고 새로운 화면을 추가.
// Get.offAndToNamed 이름 있는 라우트를 사용하여 새로운 화면을 추가한 후, 이전 화면을 제거.
// Get.offUntil 주어진 조건을 만족하는 화면까지 화면을 제거한 후, 새로운 화면을 추가.
// Get.offNamedUntil 이름 있는 라우트를 사용하여 주어진 조건을 만족하는 화면까지 화면을 제거한 후, 새로운 화면을 추가.
// Get.removeRoute 주어진 조건을 만족하는 화면을 제거.
// Get.ofAll 모든 화면을 제거한 후, 새로운 화면을 추가.
// Get.ofAllNamed 이름 있는 라우트를 사용하여 모든 화면을 제거한 후, 새로운 화면을 추가.
// Get.previousRoute 이전 화면 확인
