import 'package:flutter/material.dart';
import 'package:flutter_package/languages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Get.deviceLocale,
      // 지원하지 않은 언어는
      fallbackLocale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(),
      darkTheme: ThemeData.dark().copyWith(),
      home: GetXPackageDependency(),
    );
  }
}

class GetXPackageDependency extends StatelessWidget {
  // 종속성 관리
  // final controller = Get.put(CountController()); - 해당 코드가 실행되는 시점에 컨트롤러가 메모리에 생성
  // Get.lazyPut<CountController>(() => CountController()); - 실제로 컨트롤러를 사용하는 시점에 컨트롤러가 메모리에 생성
  // Get.putAsync<CountController>(() async => await CountController()); - 추가하려는 컨트롤러가 Future 를 반환하는 경우.
  // final controller = Get.find<CountController>(); - 위를 사용하여 컨트롤러를 추가하면, find 를 사용하여 추가한 컨트롤러를 찾아서 사용할 수 있음.
  // 화면 이동시 종속성 주입
  // Get.to(Second(), binding: BindingsBuilder(() {Get.put(CountController());}));
  // Get.toNamed 도 동일
  // 라우트에서 종속성 주입
  // getPages: [GetPage(name:'/', page:() => Home()), GetPage(name:'/second', page:()) => Second(), binding: BindingsBuilder(() {Get.lazyPut<CountController>(() => CountController());})),]

  const GetXPackageDependency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetXPackageDependency'),
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
