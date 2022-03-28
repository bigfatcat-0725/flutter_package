import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxPackageState extends StatelessWidget {
  GetxPackageState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.find 를 쓰겠다
    // Get.find 로 등록한 컨트롤러를 어디에서든 접근하여 사용가능. 자식 위젯에서도 사용 가능.
    // Get.isRegistered<CountController>() 컨트롤러가 등록이 되어 있는지 확인.
    Get.put(CountController());
    // 변수를 통해
    final controller2 = Get.put(CountController2());

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(builder: ((controller) {
              return Text('${CountController.to.count}');
            })),
            InkWell(
              onTap: () {
                CountController.to.increment();
                controller2.increment();
              },
              child: Text('Click'),
            ),
            Obx(() => Text('${controller2.count.value}')),
          ],
        ),
      ),
    );
  }
}

// 단순 상태 관리
class CountController extends GetxController {
  // static get to
  // 자주 사용되는 패턴
  static CountController get to => Get.find<CountController>();

  int count = 0;

  void increment() {
    count++;
    update();
  }
}

// 반응형 상태 관리
class CountController2 extends GetxController {
  @override
  void onInit() {
    // 라이프사이클 함수
    // 컨트롤러가 생성될 때, 호출됨.
    super.onInit();

    // Worker
    // 컨트롤러 혹은 클래스가 생성될 때만 사용 가능
    // onInit, 클래스 생성자, StatefulWidget 의 initState
    ever(count, (_) => print('called every update'));
    once(count, (_) => print('called once'));
    debounce(
      count,
      (_) => print('called after 1 seconds after last change'),
      time: Duration(seconds: 1),
    );
    interval(
      count,
      (_) => print('called every second during the value is changed.'),
      time: Duration(seconds: 1),
    );
  }

  void onClose() {
    // 컨트롤러가 더이상 필요없어 메모리에서 제거될 때 호출됨.
    super.onInit();
  }

  Rx<int> count = 0.obs;

  void increment() {
    count.value++;
  }
}

// 만약, 자식 위젯에서 해당 컨트롤러를 사용하여 상태 값을 변경하거나, 상태 값을 사용해야 하는 경우
// 1. CustomWidget(controller: controller)
// 2. Get.find<CountController>()
