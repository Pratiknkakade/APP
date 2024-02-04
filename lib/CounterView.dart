import 'package:app/CounterViewController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});

  final CounterViewController counterController =
      Get.put(CounterViewController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Obx(() => Text(counterController.x.value.toString())),
          ),
          ElevatedButton(
              onPressed: () {
                counterController.increment();
              },
              child: Text('++')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                counterController.decrement();
              },
              child: Text('--'))
        ],
      ),
    );
  }
}
