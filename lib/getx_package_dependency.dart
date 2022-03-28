import 'package:flutter/material.dart';

class GetXPackageDependency extends StatelessWidget {
  // GetX 종속성 관리
  // ---
  // final controller = Get.put(CountController()); - 해당 코드가 실행되는 시점에 컨트롤러가 메모리에 생성
  // Get.lazyPut<CountController>(() => CountController()); - 실제로 컨트롤러를 사용하는 시점에 컨트롤러가 메모리에 생성
  // Get.putAsync<CountController>(() async => await CountController()); - 추가하려는 컨트롤러가 Future 를 반환하는 경우.
  // final controller = Get.find<CountController>(); - 위를 사용하여 컨트롤러를 추가하면, find 를 사용하여 추가한 컨트롤러를 찾아서 사용할 수 있음.
  // 화면 이동시 종속성 주입
  // Get.to(Second(), binding: BindingsBuilder(() {Get.put(CountController());}));
  // Get.toNamed 도 동일
  // 라우트에서 종속성 주입
  // getPages: [GetPage(name:'/', page:() => Home()), GetPage(name:'/second', page:()) => Second(), binding: BindingsBuilder(() {Get.lazyPut<CountController>(() => CountController());})),]
  // binding 분리
  // class SecondBinging implements Bindings {
  //  @override
  //     void dependencies () {
  //       Get.lazyPut<CountController>(() => CountController());
  //     }
  // }
  // Get.to(Second(), binding: SecondBinding());
  // getPages: [GetPage(name:'/', page:() => Home()), GetPage(name:'/second', page:()) => Second(), binding: SecondBinding())),]
  // GetX 에서 컨트롤러는 사용이 종료되면 자동으로 메모리에서 제거
  // 미리 데이터 로드 or 자주 사용되는 컨트롤러는 미리 메모리에 로드하고, 제거하지 않고 계속 사용하는는 경우가 있다.
  // 이럴 때, permanent 옵션 사용
  // Get.put(CountController(), permanent: true);
  // class CountController extends GetxService{...}
  // 컨트롤러 초기화
  // Get.reset();
  // 거의 사용되지 않지만, 특정 상황에서 메모리에 등록된 컨트롤러를 제거할 필요가 있을 때
  // Get.delete<CountController>();
  // ---

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
